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

extension TCDsError {
    public struct FailedOperation: TCDsErrorType {
        enum Code: String {
            case accountNotOwnContractError = "FailedOperation.AccountNotOwnContractError"
            case authorizationTimeError = "FailedOperation.AuthorizationTimeError"
            case backendInterfaceError = "FailedOperation.BackendInterfaceError"
            case backendInterfaceResponseContentError = "FailedOperation.BackendInterfaceResponseContentError"
            case backendInterfaceResponseHeaderError = "FailedOperation.BackendInterfaceResponseHeaderError"
            case certTypeError = "FailedOperation.CertTypeError"
            case checkVcodeError = "FailedOperation.CheckVcodeError"
            case contractExpired = "FailedOperation.ContractExpired"
            case contractSignedError = "FailedOperation.ContractSignedError"
            case coordinateError = "FailedOperation.CoordinateError"
            case coordinateOutsidePDF = "FailedOperation.CoordinateOutsidePDF"
            case costAccountError = "FailedOperation.CostAccountError"
            case createContractError = "FailedOperation.CreateContractError"
            case createEnterpriseAccountError = "FailedOperation.CreateEnterpriseAccountError"
            case createPersonalAccountError = "FailedOperation.CreatePersonalAccountError"
            case createSealError = "FailedOperation.CreateSealError"
            case deleteAccountError = "FailedOperation.DeleteAccountError"
            case deleteSealError = "FailedOperation.DeleteSealError"
            case describeSubplatError = "FailedOperation.DescribeSubplatError"
            case describeTaskStatusError = "FailedOperation.DescribeTaskStatusError"
            case downloadSealError = "FailedOperation.DownloadSealError"
            case enterpriseNameFormatError = "FailedOperation.EnterpriseNameFormatError"
            case firstEnterpriseAccountDeleteError = "FailedOperation.FirstEnterpriseAccountDeleteError"
            case formatError = "FailedOperation.FormatError"
            case getPDFSizeFailed = "FailedOperation.GetPDFSizeFailed"
            case identNoFormatError = "FailedOperation.IdentNoFormatError"
            case identTypeError = "FailedOperation.IdentTypeError"
            case imageMeasurementOverLimitError = "FailedOperation.ImageMeasurementOverLimitError"
            case imageNotBase = "FailedOperation.ImageNotBase"
            case imageNotPNG = "FailedOperation.ImageNotPNG"
            case ipFormatError = "FailedOperation.IPFormatError"
            case messageDataIllegal = "FailedOperation.MessageDataIllegal"
            case messageDataOverSize = "FailedOperation.MessageDataOverSize"
            case nameContainsNumber = "FailedOperation.NameContainsNumber"
            case nameIsPureNumber = "FailedOperation.NameIsPureNumber"
            case noPermissionToSign = "FailedOperation.NoPermissionToSign"
            case noVerifyError = "FailedOperation.NoVerifyError"
            case offsetCoordOverLimitError = "FailedOperation.OffsetCoordOverLimitError"
            case repeatedCoordinate = "FailedOperation.RepeatedCoordinate"
            case sealMismatched = "FailedOperation.SealMismatched"
            case sealNumOverLimit = "FailedOperation.SealNumOverLimit"
            case sealsExceed = "FailedOperation.SealsExceed"
            case sendVcodeError = "FailedOperation.SendVcodeError"
            case signContractByCoordinateError = "FailedOperation.SignContractByCoordinateError"
            case signContractByKeywordError = "FailedOperation.SignContractByKeywordError"
            case signFieldNotFound = "FailedOperation.SignFieldNotFound"
            case signPageError = "FailedOperation.SignPageError"
            case signPermissionExisted = "FailedOperation.SignPermissionExisted"
            case smsCodeExpired = "FailedOperation.SMSCodeExpired"
            case smsCodeLengthWrong = "FailedOperation.SMSCodeLengthWrong"
            case transactorNameFormatError = "FailedOperation.TransactorNameFormatError"
            case transactorPhoneFormatError = "FailedOperation.TransactorPhoneFormatError"
            case updateFeeStatusError = "FailedOperation.UpdateFeeStatusError"
            case vcodeChecked = "FailedOperation.VcodeChecked"
            case wrongCertType = "FailedOperation.WrongCertType"
            case wrongIdentNoFormat = "FailedOperation.WrongIdentNoFormat"
            case wrongIdentNoSize = "FailedOperation.WrongIdentNoSize"
            case wrongSMSCode = "FailedOperation.WrongSMSCode"
            case other = "FailedOperation.Other"
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

        /// ??????????????????????????????
        public static var accountNotOwnContractError: FailedOperation {
            FailedOperation(.accountNotOwnContractError)
        }

        /// ???????????????????????????
        public static var authorizationTimeError: FailedOperation {
            FailedOperation(.authorizationTimeError)
        }

        /// ???????????????????????????
        public static var backendInterfaceError: FailedOperation {
            FailedOperation(.backendInterfaceError)
        }

        /// ?????????????????????????????????????????????????????????
        public static var backendInterfaceResponseContentError: FailedOperation {
            FailedOperation(.backendInterfaceResponseContentError)
        }

        /// ??????????????????????????????????????????????????????
        public static var backendInterfaceResponseHeaderError: FailedOperation {
            FailedOperation(.backendInterfaceResponseHeaderError)
        }

        /// ?????????????????????
        public static var certTypeError: FailedOperation {
            FailedOperation(.certTypeError)
        }

        /// ??????????????????????????????
        public static var checkVcodeError: FailedOperation {
            FailedOperation(.checkVcodeError)
        }

        /// ??????????????????
        public static var contractExpired: FailedOperation {
            FailedOperation(.contractExpired)
        }

        /// ???????????????????????????
        public static var contractSignedError: FailedOperation {
            FailedOperation(.contractSignedError)
        }

        /// ???????????????????????????????????????????????????
        public static var coordinateError: FailedOperation {
            FailedOperation(.coordinateError)
        }

        /// ???????????????PDF???????????????
        public static var coordinateOutsidePDF: FailedOperation {
            FailedOperation(.coordinateOutsidePDF)
        }

        /// ?????????????????????
        public static var costAccountError: FailedOperation {
            FailedOperation(.costAccountError)
        }

        /// ?????????????????????
        public static var createContractError: FailedOperation {
            FailedOperation(.createContractError)
        }

        /// ???????????????????????????????????????????????????
        public static var createEnterpriseAccountError: FailedOperation {
            FailedOperation(.createEnterpriseAccountError)
        }

        /// ???????????????????????????
        public static var createPersonalAccountError: FailedOperation {
            FailedOperation(.createPersonalAccountError)
        }

        /// ?????????????????????
        public static var createSealError: FailedOperation {
            FailedOperation(.createSealError)
        }

        /// ?????????????????????
        public static var deleteAccountError: FailedOperation {
            FailedOperation(.deleteAccountError)
        }

        /// ?????????????????????
        public static var deleteSealError: FailedOperation {
            FailedOperation(.deleteSealError)
        }

        /// ??????????????????????????????
        public static var describeSubplatError: FailedOperation {
            FailedOperation(.describeSubplatError)
        }

        /// ???????????????????????????
        public static var describeTaskStatusError: FailedOperation {
            FailedOperation(.describeTaskStatusError)
        }

        /// ???????????????????????????????????????????????????
        public static var downloadSealError: FailedOperation {
            FailedOperation(.downloadSealError)
        }

        /// ????????????????????????????????????????????????
        public static var enterpriseNameFormatError: FailedOperation {
            FailedOperation(.enterpriseNameFormatError)
        }

        /// ?????????????????????????????????????????????
        public static var firstEnterpriseAccountDeleteError: FailedOperation {
            FailedOperation(.firstEnterpriseAccountDeleteError)
        }

        /// ??????????????????????????????????????????(??????????????????????????????/????????????????????????)???
        public static var formatError: FailedOperation {
            FailedOperation(.formatError)
        }

        /// ??????PDF?????????????????????
        public static var getPDFSizeFailed: FailedOperation {
            FailedOperation(.getPDFSizeFailed)
        }

        /// ???????????????????????????????????????????????????/?????????????????????
        public static var identNoFormatError: FailedOperation {
            FailedOperation(.identNoFormatError)
        }

        /// ???????????????????????????????????????????????????[0-8]???????????????????????????0???
        public static var identTypeError: FailedOperation {
            FailedOperation(.identTypeError)
        }

        /// ????????????/??????????????????????????????(300px)???
        public static var imageMeasurementOverLimitError: FailedOperation {
            FailedOperation(.imageMeasurementOverLimitError)
        }

        /// ??????????????????BASE64???????????????
        public static var imageNotBase: FailedOperation {
            FailedOperation(.imageNotBase)
        }

        /// ??????????????????PNG?????????
        public static var imageNotPNG: FailedOperation {
            FailedOperation(.imageNotPNG)
        }

        /// ??????IP?????????????????????
        public static var ipFormatError: FailedOperation {
            FailedOperation(.ipFormatError)
        }

        /// ?????????????????????????????? '%&amp;&lt;&gt;???
        public static var messageDataIllegal: FailedOperation {
            FailedOperation(.messageDataIllegal)
        }

        /// ???????????????????????????
        public static var messageDataOverSize: FailedOperation {
            FailedOperation(.messageDataOverSize)
        }

        /// ?????????????????????????????????
        public static var nameContainsNumber: FailedOperation {
            FailedOperation(.nameContainsNumber)
        }

        /// ?????????????????????????????????
        public static var nameIsPureNumber: FailedOperation {
            FailedOperation(.nameIsPureNumber)
        }

        /// ?????????????????????????????????
        public static var noPermissionToSign: FailedOperation {
            FailedOperation(.noPermissionToSign)
        }

        /// ?????????????????????
        public static var noVerifyError: FailedOperation {
            FailedOperation(.noVerifyError)
        }

        /// ????????????????????????????????????X???/Y?????????????????????50???
        public static var offsetCoordOverLimitError: FailedOperation {
            FailedOperation(.offsetCoordOverLimitError)
        }

        /// ???????????????????????????????????????
        public static var repeatedCoordinate: FailedOperation {
            FailedOperation(.repeatedCoordinate)
        }

        /// ??????????????????
        public static var sealMismatched: FailedOperation {
            FailedOperation(.sealMismatched)
        }

        /// ????????????????????????
        public static var sealNumOverLimit: FailedOperation {
            FailedOperation(.sealNumOverLimit)
        }

        /// ???????????????????????????
        public static var sealsExceed: FailedOperation {
            FailedOperation(.sealsExceed)
        }

        /// ??????????????????????????????
        public static var sendVcodeError: FailedOperation {
            FailedOperation(.sendVcodeError)
        }

        /// ??????????????????????????????
        public static var signContractByCoordinateError: FailedOperation {
            FailedOperation(.signContractByCoordinateError)
        }

        /// ?????????????????????????????????
        public static var signContractByKeywordError: FailedOperation {
            FailedOperation(.signContractByKeywordError)
        }

        /// ?????????????????????PDF??????????????????
        public static var signFieldNotFound: FailedOperation {
            FailedOperation(.signFieldNotFound)
        }

        /// ???????????????????????????
        public static var signPageError: FailedOperation {
            FailedOperation(.signPageError)
        }

        /// ???????????????????????????
        public static var signPermissionExisted: FailedOperation {
            FailedOperation(.signPermissionExisted)
        }

        /// ???????????????????????????
        public static var smsCodeExpired: FailedOperation {
            FailedOperation(.smsCodeExpired)
        }

        /// ??????????????????????????????
        public static var smsCodeLengthWrong: FailedOperation {
            FailedOperation(.smsCodeLengthWrong)
        }

        /// ???????????????????????????????????????????????????
        public static var transactorNameFormatError: FailedOperation {
            FailedOperation(.transactorNameFormatError)
        }

        /// ??????????????????????????????????????????????????????
        public static var transactorPhoneFormatError: FailedOperation {
            FailedOperation(.transactorPhoneFormatError)
        }

        /// ???????????????????????????
        public static var updateFeeStatusError: FailedOperation {
            FailedOperation(.updateFeeStatusError)
        }

        /// ???????????????????????????
        public static var vcodeChecked: FailedOperation {
            FailedOperation(.vcodeChecked)
        }

        /// ????????????????????????????????????
        public static var wrongCertType: FailedOperation {
            FailedOperation(.wrongCertType)
        }

        /// ???????????????????????????
        public static var wrongIdentNoFormat: FailedOperation {
            FailedOperation(.wrongIdentNoFormat)
        }

        /// ?????????????????????15???18????????????
        public static var wrongIdentNoSize: FailedOperation {
            FailedOperation(.wrongIdentNoSize)
        }

        /// ???????????????????????????
        public static var wrongSMSCode: FailedOperation {
            FailedOperation(.wrongSMSCode)
        }

        /// ?????????
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asDsError() -> TCDsError {
            let code: TCDsError.Code
            switch self.error {
            case .accountNotOwnContractError: 
                code = .failedOperation_AccountNotOwnContractError
            case .authorizationTimeError: 
                code = .failedOperation_AuthorizationTimeError
            case .backendInterfaceError: 
                code = .failedOperation_BackendInterfaceError
            case .backendInterfaceResponseContentError: 
                code = .failedOperation_BackendInterfaceResponseContentError
            case .backendInterfaceResponseHeaderError: 
                code = .failedOperation_BackendInterfaceResponseHeaderError
            case .certTypeError: 
                code = .failedOperation_CertTypeError
            case .checkVcodeError: 
                code = .failedOperation_CheckVcodeError
            case .contractExpired: 
                code = .failedOperation_ContractExpired
            case .contractSignedError: 
                code = .failedOperation_ContractSignedError
            case .coordinateError: 
                code = .failedOperation_CoordinateError
            case .coordinateOutsidePDF: 
                code = .failedOperation_CoordinateOutsidePDF
            case .costAccountError: 
                code = .failedOperation_CostAccountError
            case .createContractError: 
                code = .failedOperation_CreateContractError
            case .createEnterpriseAccountError: 
                code = .failedOperation_CreateEnterpriseAccountError
            case .createPersonalAccountError: 
                code = .failedOperation_CreatePersonalAccountError
            case .createSealError: 
                code = .failedOperation_CreateSealError
            case .deleteAccountError: 
                code = .failedOperation_DeleteAccountError
            case .deleteSealError: 
                code = .failedOperation_DeleteSealError
            case .describeSubplatError: 
                code = .failedOperation_DescribeSubplatError
            case .describeTaskStatusError: 
                code = .failedOperation_DescribeTaskStatusError
            case .downloadSealError: 
                code = .failedOperation_DownloadSealError
            case .enterpriseNameFormatError: 
                code = .failedOperation_EnterpriseNameFormatError
            case .firstEnterpriseAccountDeleteError: 
                code = .failedOperation_FirstEnterpriseAccountDeleteError
            case .formatError: 
                code = .failedOperation_FormatError
            case .getPDFSizeFailed: 
                code = .failedOperation_GetPDFSizeFailed
            case .identNoFormatError: 
                code = .failedOperation_IdentNoFormatError
            case .identTypeError: 
                code = .failedOperation_IdentTypeError
            case .imageMeasurementOverLimitError: 
                code = .failedOperation_ImageMeasurementOverLimitError
            case .imageNotBase: 
                code = .failedOperation_ImageNotBase
            case .imageNotPNG: 
                code = .failedOperation_ImageNotPNG
            case .ipFormatError: 
                code = .failedOperation_IPFormatError
            case .messageDataIllegal: 
                code = .failedOperation_MessageDataIllegal
            case .messageDataOverSize: 
                code = .failedOperation_MessageDataOverSize
            case .nameContainsNumber: 
                code = .failedOperation_NameContainsNumber
            case .nameIsPureNumber: 
                code = .failedOperation_NameIsPureNumber
            case .noPermissionToSign: 
                code = .failedOperation_NoPermissionToSign
            case .noVerifyError: 
                code = .failedOperation_NoVerifyError
            case .offsetCoordOverLimitError: 
                code = .failedOperation_OffsetCoordOverLimitError
            case .repeatedCoordinate: 
                code = .failedOperation_RepeatedCoordinate
            case .sealMismatched: 
                code = .failedOperation_SealMismatched
            case .sealNumOverLimit: 
                code = .failedOperation_SealNumOverLimit
            case .sealsExceed: 
                code = .failedOperation_SealsExceed
            case .sendVcodeError: 
                code = .failedOperation_SendVcodeError
            case .signContractByCoordinateError: 
                code = .failedOperation_SignContractByCoordinateError
            case .signContractByKeywordError: 
                code = .failedOperation_SignContractByKeywordError
            case .signFieldNotFound: 
                code = .failedOperation_SignFieldNotFound
            case .signPageError: 
                code = .failedOperation_SignPageError
            case .signPermissionExisted: 
                code = .failedOperation_SignPermissionExisted
            case .smsCodeExpired: 
                code = .failedOperation_SMSCodeExpired
            case .smsCodeLengthWrong: 
                code = .failedOperation_SMSCodeLengthWrong
            case .transactorNameFormatError: 
                code = .failedOperation_TransactorNameFormatError
            case .transactorPhoneFormatError: 
                code = .failedOperation_TransactorPhoneFormatError
            case .updateFeeStatusError: 
                code = .failedOperation_UpdateFeeStatusError
            case .vcodeChecked: 
                code = .failedOperation_VcodeChecked
            case .wrongCertType: 
                code = .failedOperation_WrongCertType
            case .wrongIdentNoFormat: 
                code = .failedOperation_WrongIdentNoFormat
            case .wrongIdentNoSize: 
                code = .failedOperation_WrongIdentNoSize
            case .wrongSMSCode: 
                code = .failedOperation_WrongSMSCode
            case .other: 
                code = .failedOperation_Other
            }
            return TCDsError(code, context: self.context)
        }
    }
}
