//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCFaceidError {
    public struct FailedOperation: TCFaceidErrorType {
        enum Code: String {
            case actionCloseEye = "FailedOperation.ActionCloseEye"
            case actionFaceClose = "FailedOperation.ActionFaceClose"
            case actionFaceFar = "FailedOperation.ActionFaceFar"
            case actionFaceLeft = "FailedOperation.ActionFaceLeft"
            case actionFaceRight = "FailedOperation.ActionFaceRight"
            case actionFirstAction = "FailedOperation.ActionFirstAction"
            case actionLightDark = "FailedOperation.ActionLightDark"
            case actionLightStrong = "FailedOperation.ActionLightStrong"
            case actionNodetectFace = "FailedOperation.ActionNodetectFace"
            case actionOpenMouth = "FailedOperation.ActionOpenMouth"
            case compareFail = "FailedOperation.CompareFail"
            case compareLowSimilarity = "FailedOperation.CompareLowSimilarity"
            case compareSystemError = "FailedOperation.CompareSystemError"
            case dbError = "FailedOperation.DbError"
            case decryptSystemError = "FailedOperation.DecryptSystemError"
            case downLoadError = "FailedOperation.DownLoadError"
            case downLoadTimeoutError = "FailedOperation.DownLoadTimeoutError"
            case emptyImageError = "FailedOperation.EmptyImageError"
            case encryptSystemError = "FailedOperation.EncryptSystemError"
            case fileSaveError = "FailedOperation.FileSaveError"
            case idFormatError = "FailedOperation.IdFormatError"
            case idNameMisMatch = "FailedOperation.IdNameMisMatch"
            case idNoExistSystem = "FailedOperation.IdNoExistSystem"
            case idPhotoNoExist = "FailedOperation.IdPhotoNoExist"
            case idPhotoPoorQuality = "FailedOperation.IdPhotoPoorQuality"
            case idPhotoSystemNoanswer = "FailedOperation.IdPhotoSystemNoanswer"
            case imageBlur = "FailedOperation.ImageBlur"
            case imageDecodeFailed = "FailedOperation.ImageDecodeFailed"
            case imageNoIdCard = "FailedOperation.ImageNoIdCard"
            case imageSizeTooLarge = "FailedOperation.ImageSizeTooLarge"
            case lifePhotoDetectFaces = "FailedOperation.LifePhotoDetectFaces"
            case lifePhotoDetectFake = "FailedOperation.LifePhotoDetectFake"
            case lifePhotoDetectNoFaces = "FailedOperation.LifePhotoDetectNoFaces"
            case lifePhotoPoorQuality = "FailedOperation.LifePhotoPoorQuality"
            case lifePhotoSizeError = "FailedOperation.LifePhotoSizeError"
            case lipFaceIncomplete = "FailedOperation.LipFaceIncomplete"
            case lipMoveSmall = "FailedOperation.LipMoveSmall"
            case lipNetFailed = "FailedOperation.LipNetFailed"
            case lipSizeError = "FailedOperation.LipSizeError"
            case lipVideoInvalid = "FailedOperation.LipVideoInvalid"
            case lipVideoQuaility = "FailedOperation.LipVideoQuaility"
            case lipVoiceDetect = "FailedOperation.LipVoiceDetect"
            case lipVoiceLow = "FailedOperation.LipVoiceLow"
            case lipVoiceRecognize = "FailedOperation.LipVoiceRecognize"
            case livessBestFrameError = "FailedOperation.LivessBestFrameError"
            case livessDetectFail = "FailedOperation.LivessDetectFail"
            case livessDetectFake = "FailedOperation.LivessDetectFake"
            case livessSystemError = "FailedOperation.LivessSystemError"
            case livessUnknownError = "FailedOperation.LivessUnknownError"
            case nameFormatError = "FailedOperation.NameFormatError"
            case ocrFailed = "FailedOperation.OcrFailed"
            case requestLimitExceeded = "FailedOperation.RequestLimitExceeded"
            case silentDetectFail = "FailedOperation.SilentDetectFail"
            case silentEyeLiveFail = "FailedOperation.SilentEyeLiveFail"
            case silentFaceDetectFail = "FailedOperation.SilentFaceDetectFail"
            case silentFaceQualityFail = "FailedOperation.SilentFaceQualityFail"
            case silentFaceWithMaskFail = "FailedOperation.SilentFaceWithMaskFail"
            case silentMouthLiveFail = "FailedOperation.SilentMouthLiveFail"
            case silentMultiFaceFail = "FailedOperation.SilentMultiFaceFail"
            case silentPictureLiveFail = "FailedOperation.SilentPictureLiveFail"
            case silentThreshold = "FailedOperation.SilentThreshold"
            case silentTooShort = "FailedOperation.SilentTooShort"
            case stsUnAuthErrError = "FailedOperation.StsUnAuthErrError"
            case unKnown = "FailedOperation.UnKnown"
            case unregisteredEid = "FailedOperation.UnregisteredEid"
            case verificationFail = "FailedOperation.VerificationFail"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// ???????????????????????????
        public static var actionCloseEye: FailedOperation {
            FailedOperation(.actionCloseEye)
        }

        /// ?????????????????????
        public static var actionFaceClose: FailedOperation {
            FailedOperation(.actionFaceClose)
        }

        /// ?????????????????????
        public static var actionFaceFar: FailedOperation {
            FailedOperation(.actionFaceFar)
        }

        /// ?????????????????????
        public static var actionFaceLeft: FailedOperation {
            FailedOperation(.actionFaceLeft)
        }

        /// ?????????????????????
        public static var actionFaceRight: FailedOperation {
            FailedOperation(.actionFaceRight)
        }

        /// ???????????????????????????
        public static var actionFirstAction: FailedOperation {
            FailedOperation(.actionFirstAction)
        }

        /// ???????????????
        public static var actionLightDark: FailedOperation {
            FailedOperation(.actionLightDark)
        }

        /// ???????????????
        public static var actionLightStrong: FailedOperation {
            FailedOperation(.actionLightStrong)
        }

        /// ??????????????????????????????
        public static var actionNodetectFace: FailedOperation {
            FailedOperation(.actionNodetectFace)
        }

        /// ???????????????????????????
        public static var actionOpenMouth: FailedOperation {
            FailedOperation(.actionOpenMouth)
        }

        /// ???????????????
        public static var compareFail: FailedOperation {
            FailedOperation(.compareFail)
        }

        /// ???????????????????????????????????????
        public static var compareLowSimilarity: FailedOperation {
            FailedOperation(.compareLowSimilarity)
        }

        /// ?????????????????????????????????
        public static var compareSystemError: FailedOperation {
            FailedOperation(.compareSystemError)
        }

        /// ??????????????????
        public static var dbError: FailedOperation {
            FailedOperation(.dbError)
        }

        /// ???????????????
        public static var decryptSystemError: FailedOperation {
            FailedOperation(.decryptSystemError)
        }

        /// ?????????????????????
        public static var downLoadError: FailedOperation {
            FailedOperation(.downLoadError)
        }

        /// ?????????????????????
        public static var downLoadTimeoutError: FailedOperation {
            FailedOperation(.downLoadTimeoutError)
        }

        /// ?????????????????????
        public static var emptyImageError: FailedOperation {
            FailedOperation(.emptyImageError)
        }

        /// ???????????????
        public static var encryptSystemError: FailedOperation {
            FailedOperation(.encryptSystemError)
        }

        /// ???????????????????????????????????????
        public static var fileSaveError: FailedOperation {
            FailedOperation(.fileSaveError)
        }

        /// ??????????????????????????????
        public static var idFormatError: FailedOperation {
            FailedOperation(.idFormatError)
        }

        /// ??????????????????????????????????????????????????????
        public static var idNameMisMatch: FailedOperation {
            FailedOperation(.idNameMisMatch)
        }

        /// ??????????????????????????????????????????????????????
        public static var idNoExistSystem: FailedOperation {
            FailedOperation(.idNoExistSystem)
        }

        /// ????????????????????????????????????????????????????????????
        public static var idPhotoNoExist: FailedOperation {
            FailedOperation(.idPhotoNoExist)
        }

        /// ????????????????????????????????????????????????
        public static var idPhotoPoorQuality: FailedOperation {
            FailedOperation(.idPhotoPoorQuality)
        }

        /// ??????????????????????????????????????????????????????????????????
        public static var idPhotoSystemNoanswer: FailedOperation {
            FailedOperation(.idPhotoSystemNoanswer)
        }

        /// ???????????????
        public static var imageBlur: FailedOperation {
            FailedOperation(.imageBlur)
        }

        /// ?????????????????????
        public static var imageDecodeFailed: FailedOperation {
            FailedOperation(.imageDecodeFailed)
        }

        /// ?????????????????????????????????
        public static var imageNoIdCard: FailedOperation {
            FailedOperation(.imageNoIdCard)
        }

        /// ?????????????????????
        public static var imageSizeTooLarge: FailedOperation {
            FailedOperation(.imageSizeTooLarge)
        }

        /// ????????????????????????
        public static var lifePhotoDetectFaces: FailedOperation {
            FailedOperation(.lifePhotoDetectFaces)
        }

        /// ????????????????????????
        public static var lifePhotoDetectFake: FailedOperation {
            FailedOperation(.lifePhotoDetectFake)
        }

        /// ??????????????????????????????
        public static var lifePhotoDetectNoFaces: FailedOperation {
            FailedOperation(.lifePhotoDetectNoFaces)
        }

        /// ????????????????????????????????????????????????
        public static var lifePhotoPoorQuality: FailedOperation {
            FailedOperation(.lifePhotoPoorQuality)
        }

        /// ??????????????????????????????
        public static var lifePhotoSizeError: FailedOperation {
            FailedOperation(.lifePhotoSizeError)
        }

        /// ????????????????????????
        public static var lipFaceIncomplete: FailedOperation {
            FailedOperation(.lipFaceIncomplete)
        }

        /// ???????????????????????????
        public static var lipMoveSmall: FailedOperation {
            FailedOperation(.lipMoveSmall)
        }

        /// ?????????????????????????????????
        public static var lipNetFailed: FailedOperation {
            FailedOperation(.lipNetFailed)
        }

        /// ????????????????????????????????????????????????????????????6s?????????
        public static var lipSizeError: FailedOperation {
            FailedOperation(.lipSizeError)
        }

        /// ?????????????????????
        public static var lipVideoInvalid: FailedOperation {
            FailedOperation(.lipVideoInvalid)
        }

        /// ?????????????????????
        public static var lipVideoQuaility: FailedOperation {
            FailedOperation(.lipVideoQuaility)
        }

        /// ?????????????????????
        public static var lipVoiceDetect: FailedOperation {
            FailedOperation(.lipVoiceDetect)
        }

        /// ?????????????????????
        public static var lipVoiceLow: FailedOperation {
            FailedOperation(.lipVoiceLow)
        }

        /// ?????????????????????
        public static var lipVoiceRecognize: FailedOperation {
            FailedOperation(.lipVoiceRecognize)
        }

        /// ?????????????????????????????????????????????
        public static var livessBestFrameError: FailedOperation {
            FailedOperation(.livessBestFrameError)
        }

        /// ????????????????????????
        public static var livessDetectFail: FailedOperation {
            FailedOperation(.livessDetectFail)
        }

        /// ????????????????????????
        public static var livessDetectFake: FailedOperation {
            FailedOperation(.livessDetectFake)
        }

        /// ?????????????????????????????????
        public static var livessSystemError: FailedOperation {
            FailedOperation(.livessSystemError)
        }

        /// ??????????????????????????????
        public static var livessUnknownError: FailedOperation {
            FailedOperation(.livessUnknownError)
        }

        /// ????????????????????????
        public static var nameFormatError: FailedOperation {
            FailedOperation(.nameFormatError)
        }

        /// Ocr???????????????
        public static var ocrFailed: FailedOperation {
            FailedOperation(.ocrFailed)
        }

        /// ???????????????????????????
        public static var requestLimitExceeded: FailedOperation {
            FailedOperation(.requestLimitExceeded)
        }

        /// ?????????????????????
        public static var silentDetectFail: FailedOperation {
            FailedOperation(.silentDetectFail)
        }

        /// ?????????????????????
        public static var silentEyeLiveFail: FailedOperation {
            FailedOperation(.silentEyeLiveFail)
        }

        /// ???????????????????????????
        public static var silentFaceDetectFail: FailedOperation {
            FailedOperation(.silentFaceDetectFail)
        }

        /// ???????????????????????????
        public static var silentFaceQualityFail: FailedOperation {
            FailedOperation(.silentFaceQualityFail)
        }

        /// ?????????????????????
        public static var silentFaceWithMaskFail: FailedOperation {
            FailedOperation(.silentFaceWithMaskFail)
        }

        /// ?????????????????????
        public static var silentMouthLiveFail: FailedOperation {
            FailedOperation(.silentMouthLiveFail)
        }

        /// ?????????????????????????????????
        public static var silentMultiFaceFail: FailedOperation {
            FailedOperation(.silentMultiFaceFail)
        }

        /// ???????????????
        public static var silentPictureLiveFail: FailedOperation {
            FailedOperation(.silentPictureLiveFail)
        }

        /// ????????????????????????????????????
        public static var silentThreshold: FailedOperation {
            FailedOperation(.silentThreshold)
        }

        /// ????????????????????????????????????2?????????????????????
        public static var silentTooShort: FailedOperation {
            FailedOperation(.silentTooShort)
        }

        /// STS????????????
        public static var stsUnAuthErrError: FailedOperation {
            FailedOperation(.stsUnAuthErrError)
        }

        /// ?????????????????????
        public static var unKnown: FailedOperation {
            FailedOperation(.unKnown)
        }

        /// ??????????????????E?????????????????????????????????????????????
        public static var unregisteredEid: FailedOperation {
            FailedOperation(.unregisteredEid)
        }

        /// ??????????????????
        public static var verificationFail: FailedOperation {
            FailedOperation(.verificationFail)
        }

        public func asFaceidError() -> TCFaceidError {
            let code: TCFaceidError.Code
            switch self.error {
            case .actionCloseEye: 
                code = .failedOperation_ActionCloseEye
            case .actionFaceClose: 
                code = .failedOperation_ActionFaceClose
            case .actionFaceFar: 
                code = .failedOperation_ActionFaceFar
            case .actionFaceLeft: 
                code = .failedOperation_ActionFaceLeft
            case .actionFaceRight: 
                code = .failedOperation_ActionFaceRight
            case .actionFirstAction: 
                code = .failedOperation_ActionFirstAction
            case .actionLightDark: 
                code = .failedOperation_ActionLightDark
            case .actionLightStrong: 
                code = .failedOperation_ActionLightStrong
            case .actionNodetectFace: 
                code = .failedOperation_ActionNodetectFace
            case .actionOpenMouth: 
                code = .failedOperation_ActionOpenMouth
            case .compareFail: 
                code = .failedOperation_CompareFail
            case .compareLowSimilarity: 
                code = .failedOperation_CompareLowSimilarity
            case .compareSystemError: 
                code = .failedOperation_CompareSystemError
            case .dbError: 
                code = .failedOperation_DbError
            case .decryptSystemError: 
                code = .failedOperation_DecryptSystemError
            case .downLoadError: 
                code = .failedOperation_DownLoadError
            case .downLoadTimeoutError: 
                code = .failedOperation_DownLoadTimeoutError
            case .emptyImageError: 
                code = .failedOperation_EmptyImageError
            case .encryptSystemError: 
                code = .failedOperation_EncryptSystemError
            case .fileSaveError: 
                code = .failedOperation_FileSaveError
            case .idFormatError: 
                code = .failedOperation_IdFormatError
            case .idNameMisMatch: 
                code = .failedOperation_IdNameMisMatch
            case .idNoExistSystem: 
                code = .failedOperation_IdNoExistSystem
            case .idPhotoNoExist: 
                code = .failedOperation_IdPhotoNoExist
            case .idPhotoPoorQuality: 
                code = .failedOperation_IdPhotoPoorQuality
            case .idPhotoSystemNoanswer: 
                code = .failedOperation_IdPhotoSystemNoanswer
            case .imageBlur: 
                code = .failedOperation_ImageBlur
            case .imageDecodeFailed: 
                code = .failedOperation_ImageDecodeFailed
            case .imageNoIdCard: 
                code = .failedOperation_ImageNoIdCard
            case .imageSizeTooLarge: 
                code = .failedOperation_ImageSizeTooLarge
            case .lifePhotoDetectFaces: 
                code = .failedOperation_LifePhotoDetectFaces
            case .lifePhotoDetectFake: 
                code = .failedOperation_LifePhotoDetectFake
            case .lifePhotoDetectNoFaces: 
                code = .failedOperation_LifePhotoDetectNoFaces
            case .lifePhotoPoorQuality: 
                code = .failedOperation_LifePhotoPoorQuality
            case .lifePhotoSizeError: 
                code = .failedOperation_LifePhotoSizeError
            case .lipFaceIncomplete: 
                code = .failedOperation_LipFaceIncomplete
            case .lipMoveSmall: 
                code = .failedOperation_LipMoveSmall
            case .lipNetFailed: 
                code = .failedOperation_LipNetFailed
            case .lipSizeError: 
                code = .failedOperation_LipSizeError
            case .lipVideoInvalid: 
                code = .failedOperation_LipVideoInvalid
            case .lipVideoQuaility: 
                code = .failedOperation_LipVideoQuaility
            case .lipVoiceDetect: 
                code = .failedOperation_LipVoiceDetect
            case .lipVoiceLow: 
                code = .failedOperation_LipVoiceLow
            case .lipVoiceRecognize: 
                code = .failedOperation_LipVoiceRecognize
            case .livessBestFrameError: 
                code = .failedOperation_LivessBestFrameError
            case .livessDetectFail: 
                code = .failedOperation_LivessDetectFail
            case .livessDetectFake: 
                code = .failedOperation_LivessDetectFake
            case .livessSystemError: 
                code = .failedOperation_LivessSystemError
            case .livessUnknownError: 
                code = .failedOperation_LivessUnknownError
            case .nameFormatError: 
                code = .failedOperation_NameFormatError
            case .ocrFailed: 
                code = .failedOperation_OcrFailed
            case .requestLimitExceeded: 
                code = .failedOperation_RequestLimitExceeded
            case .silentDetectFail: 
                code = .failedOperation_SilentDetectFail
            case .silentEyeLiveFail: 
                code = .failedOperation_SilentEyeLiveFail
            case .silentFaceDetectFail: 
                code = .failedOperation_SilentFaceDetectFail
            case .silentFaceQualityFail: 
                code = .failedOperation_SilentFaceQualityFail
            case .silentFaceWithMaskFail: 
                code = .failedOperation_SilentFaceWithMaskFail
            case .silentMouthLiveFail: 
                code = .failedOperation_SilentMouthLiveFail
            case .silentMultiFaceFail: 
                code = .failedOperation_SilentMultiFaceFail
            case .silentPictureLiveFail: 
                code = .failedOperation_SilentPictureLiveFail
            case .silentThreshold: 
                code = .failedOperation_SilentThreshold
            case .silentTooShort: 
                code = .failedOperation_SilentTooShort
            case .stsUnAuthErrError: 
                code = .failedOperation_StsUnAuthErrError
            case .unKnown: 
                code = .failedOperation_UnKnown
            case .unregisteredEid: 
                code = .failedOperation_UnregisteredEid
            case .verificationFail: 
                code = .failedOperation_VerificationFail
            }
            return TCFaceidError(code, context: self.context)
        }
    }
}
