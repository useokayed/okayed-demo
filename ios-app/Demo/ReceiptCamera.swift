import AVFoundation

/// New feature: scan a paper receipt with the camera.
final class ReceiptCamera {
    let session = AVCaptureSession()

    func start() throws {
        AVCaptureDevice.requestAccess(for: .video) { _ in }
        let device = AVCaptureDevice.default(for: .video)!
        let input = try AVCaptureDeviceInput(device: device)
        session.addInput(input)
    }
}
