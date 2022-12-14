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

extension TCSmsError {
    public struct InvalidParameterValue: TCSmsErrorType {
        enum Code: String {
            case beginTimeVerifyFail = "InvalidParameterValue.BeginTimeVerifyFail"
            case contentLengthLimit = "InvalidParameterValue.ContentLengthLimit"
            case endTimeVerifyFail = "InvalidParameterValue.EndTimeVerifyFail"
            case imageInvalid = "InvalidParameterValue.ImageInvalid"
            case incorrectPhoneNumber = "InvalidParameterValue.IncorrectPhoneNumber"
            case invalidDocumentType = "InvalidParameterValue.InvalidDocumentType"
            case invalidInternational = "InvalidParameterValue.InvalidInternational"
            case invalidSignPurpose = "InvalidParameterValue.InvalidSignPurpose"
            case invalidStartTime = "InvalidParameterValue.InvalidStartTime"
            case invalidTemplateFormat = "InvalidParameterValue.InvalidTemplateFormat"
            case invalidUsedMethod = "InvalidParameterValue.InvalidUsedMethod"
            case limitVerifyFail = "InvalidParameterValue.LimitVerifyFail"
            case offsetVerifyFail = "InvalidParameterValue.OffsetVerifyFail"
            case prohibitedUseUrlInTemplateParameter = "InvalidParameterValue.ProhibitedUseUrlInTemplateParameter"
            case sdkAppIdNotExist = "InvalidParameterValue.SdkAppIdNotExist"
            case signAlreadyPassedCheck = "InvalidParameterValue.SignAlreadyPassedCheck"
            case signExistAndUnapproved = "InvalidParameterValue.SignExistAndUnapproved"
            case templateParameterFormatError = "InvalidParameterValue.TemplateParameterFormatError"
            case templateParameterLengthLimit = "InvalidParameterValue.TemplateParameterLengthLimit"
            case templateWithDirtyWords = "InvalidParameterValue.TemplateWithDirtyWords"
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

        /// ?????? BeginTime ???????????????
        public static var beginTimeVerifyFail: InvalidParameterValue {
            InvalidParameterValue(.beginTimeVerifyFail)
        }

        /// ????????????????????????????????????????????????????????? <a href="https://cloud.tencent.com/document/product/382/18058">????????????????????????????????????</a>???
        public static var contentLengthLimit: InvalidParameterValue {
            InvalidParameterValue(.contentLengthLimit)
        }

        /// ?????? EndTime ???????????????
        public static var endTimeVerifyFail: InvalidParameterValue {
            InvalidParameterValue(.endTimeVerifyFail)
        }

        /// ????????????????????????????????????????????? API ???????????????????????????????????????????????????????????? <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">????????????????????????</a>???
        public static var imageInvalid: InvalidParameterValue {
            InvalidParameterValue(.imageInvalid)
        }

        /// ????????????????????????????????? <a href="https://cloud.tencent.com/document/product/382/9558#.E8.BF.94.E5.9B.9E1016.E9.94.99.E8.AF.AF.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F">1016????????????</a>???
        public static var incorrectPhoneNumber: InvalidParameterValue {
            InvalidParameterValue(.incorrectPhoneNumber)
        }

        /// DocumentType ?????????????????????????????? API ???????????????????????????????????????????????????????????? <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">????????????????????????</a>???
        public static var invalidDocumentType: InvalidParameterValue {
            InvalidParameterValue(.invalidDocumentType)
        }

        /// International ?????????????????????????????? API ???????????????????????????????????????????????????????????? <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">????????????????????????</a>???
        public static var invalidInternational: InvalidParameterValue {
            InvalidParameterValue(.invalidInternational)
        }

        /// SignPurpose ?????????????????????????????? API ???????????????????????????????????????????????????????????? <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">????????????????????????</a>???
        public static var invalidSignPurpose: InvalidParameterValue {
            InvalidParameterValue(.invalidSignPurpose)
        }

        /// ?????????????????????/????????????????????????????????????????????? SendDateTime ?????? EndDateTime???
        public static var invalidStartTime: InvalidParameterValue {
            InvalidParameterValue(.invalidStartTime)
        }

        /// ??????????????????????????????<a href="https://cloud.tencent.com/document/product/382/39023">????????????????????????</a>???
        public static var invalidTemplateFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidTemplateFormat)
        }

        /// UsedMethod ?????????????????????????????? API ???????????????????????????????????????????????????????????? <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">????????????????????????</a>???
        public static var invalidUsedMethod: InvalidParameterValue {
            InvalidParameterValue(.invalidUsedMethod)
        }

        /// ?????? Limit ???????????????
        public static var limitVerifyFail: InvalidParameterValue {
            InvalidParameterValue(.limitVerifyFail)
        }

        /// ?????? Offset ???????????????
        public static var offsetVerifyFail: InvalidParameterValue {
            InvalidParameterValue(.offsetVerifyFail)
        }

        /// ?????????????????????????????? URL???
        public static var prohibitedUseUrlInTemplateParameter: InvalidParameterValue {
            InvalidParameterValue(.prohibitedUseUrlInTemplateParameter)
        }

        /// SdkAppId ????????????
        ///
        /// ??????????????????ID????????????????????????
        public static var sdkAppIdNotExist: InvalidParameterValue {
            InvalidParameterValue(.sdkAppIdNotExist)
        }

        /// ?????????????????????????????????????????????????????????
        public static var signAlreadyPassedCheck: InvalidParameterValue {
            InvalidParameterValue(.signAlreadyPassedCheck)
        }

        /// ????????????????????????????????????
        public static var signExistAndUnapproved: InvalidParameterValue {
            InvalidParameterValue(.signExistAndUnapproved)
        }

        /// ?????????????????????????????????????????????????????????????????????????????????0 - 6????????????6??????????????????
        public static var templateParameterFormatError: InvalidParameterValue {
            InvalidParameterValue(.templateParameterFormatError)
        }

        /// ?????????????????????????????????12?????????????????????????????????????????????????????????????????? <a href="https://cloud.tencent.com/document/product/378/34075">????????????????????????</a>??????????????????????????????????????????????????????1?????????????????????
        public static var templateParameterLengthLimit: InvalidParameterValue {
            InvalidParameterValue(.templateParameterLengthLimit)
        }

        /// ???????????????????????????????????????<a href="https://cloud.tencent.com/document/product/382/39023">????????????????????????</a>???
        public static var templateWithDirtyWords: InvalidParameterValue {
            InvalidParameterValue(.templateWithDirtyWords)
        }

        public func asSmsError() -> TCSmsError {
            let code: TCSmsError.Code
            switch self.error {
            case .beginTimeVerifyFail: 
                code = .invalidParameterValue_BeginTimeVerifyFail
            case .contentLengthLimit: 
                code = .invalidParameterValue_ContentLengthLimit
            case .endTimeVerifyFail: 
                code = .invalidParameterValue_EndTimeVerifyFail
            case .imageInvalid: 
                code = .invalidParameterValue_ImageInvalid
            case .incorrectPhoneNumber: 
                code = .invalidParameterValue_IncorrectPhoneNumber
            case .invalidDocumentType: 
                code = .invalidParameterValue_InvalidDocumentType
            case .invalidInternational: 
                code = .invalidParameterValue_InvalidInternational
            case .invalidSignPurpose: 
                code = .invalidParameterValue_InvalidSignPurpose
            case .invalidStartTime: 
                code = .invalidParameterValue_InvalidStartTime
            case .invalidTemplateFormat: 
                code = .invalidParameterValue_InvalidTemplateFormat
            case .invalidUsedMethod: 
                code = .invalidParameterValue_InvalidUsedMethod
            case .limitVerifyFail: 
                code = .invalidParameterValue_LimitVerifyFail
            case .offsetVerifyFail: 
                code = .invalidParameterValue_OffsetVerifyFail
            case .prohibitedUseUrlInTemplateParameter: 
                code = .invalidParameterValue_ProhibitedUseUrlInTemplateParameter
            case .sdkAppIdNotExist: 
                code = .invalidParameterValue_SdkAppIdNotExist
            case .signAlreadyPassedCheck: 
                code = .invalidParameterValue_SignAlreadyPassedCheck
            case .signExistAndUnapproved: 
                code = .invalidParameterValue_SignExistAndUnapproved
            case .templateParameterFormatError: 
                code = .invalidParameterValue_TemplateParameterFormatError
            case .templateParameterLengthLimit: 
                code = .invalidParameterValue_TemplateParameterLengthLimit
            case .templateWithDirtyWords: 
                code = .invalidParameterValue_TemplateWithDirtyWords
            }
            return TCSmsError(code, context: self.context)
        }
    }
}
