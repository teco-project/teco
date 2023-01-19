//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
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
    public struct UnsupportedOperation: TCSmsErrorType {
        enum Code: String {
            case chineseMainlandTemplateToGlobalPhone = "UnsupportedOperation.ChineseMainlandTemplateToGlobalPhone"
            case containDomesticAndInternationalPhoneNumber = "UnsupportedOperation.ContainDomesticAndInternationalPhoneNumber"
            case globalTemplateToChineseMainlandPhone = "UnsupportedOperation.GlobalTemplateToChineseMainlandPhone"
            case unsuportedRegion = "UnsupportedOperation.UnsuportedRegion"
            case other = "UnsupportedOperation."
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

        /// 国内短信模板不支持发送国际/港澳台手机号。发送国际/港澳台手机号请使用国际/港澳台短信正文模板。
        ///
        /// 发送国际/港澳台手机号请使用国际/港澳台短信正文模板。
        public static var chineseMainlandTemplateToGlobalPhone: UnsupportedOperation {
            UnsupportedOperation(.chineseMainlandTemplateToGlobalPhone)
        }

        /// 群发请求里既有国内手机号也有国际手机号。请排查是否存在（1）使用国内签名或模板却发送短信到国际手机号；（2）使用国际签名或模板却发送短信到国内手机号。
        ///
        /// 可参考 [短信发送提示：UnsupportedOperation.ContainDomesticAndInternationalPhoneNumber 如何处理](hhttps://cloud.tencent.com/document/product/382/9558#.E7.9F.AD.E4.BF.A1.E5.8F.91.E9.80.81.E6.8F.90.E7.A4.BA.EF.BC.9Aunsupportedoperation.containdomesticandinternationalphonenumber-.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F)，若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var containDomesticAndInternationalPhoneNumber: UnsupportedOperation {
            UnsupportedOperation(.containDomesticAndInternationalPhoneNumber)
        }

        /// 国际/港澳台短信模板不支持发送国内手机号。发送国内手机号请使用国内短信正文模板。
        ///
        /// 发送国内手机号请使用国内短信正文模板。
        public static var globalTemplateToChineseMainlandPhone: UnsupportedOperation {
            UnsupportedOperation(.globalTemplateToChineseMainlandPhone)
        }

        /// 不支持该地区短信下发。
        public static var unsuportedRegion: UnsupportedOperation {
            UnsupportedOperation(.unsuportedRegion)
        }

        /// 不支持该请求。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asSmsError() -> TCSmsError {
            let code: TCSmsError.Code
            switch self.error {
            case .chineseMainlandTemplateToGlobalPhone:
                code = .unsupportedOperation_ChineseMainlandTemplateToGlobalPhone
            case .containDomesticAndInternationalPhoneNumber:
                code = .unsupportedOperation_ContainDomesticAndInternationalPhoneNumber
            case .globalTemplateToChineseMainlandPhone:
                code = .unsupportedOperation_GlobalTemplateToChineseMainlandPhone
            case .unsuportedRegion:
                code = .unsupportedOperation_UnsuportedRegion
            case .other:
                code = .unsupportedOperation_
            }
            return TCSmsError(code, context: self.context)
        }
    }
}
