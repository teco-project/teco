//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCSmsError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case appCountryOrRegionDailyLimit = "LimitExceeded.AppCountryOrRegionDailyLimit"
            case appCountryOrRegionInBlacklist = "LimitExceeded.AppCountryOrRegionInBlacklist"
            case appDailyLimit = "LimitExceeded.AppDailyLimit"
            case appGlobalDailyLimit = "LimitExceeded.AppGlobalDailyLimit"
            case appMainlandChinaDailyLimit = "LimitExceeded.AppMainlandChinaDailyLimit"
            case dailyLimit = "LimitExceeded.DailyLimit"
            case deliveryFrequencyLimit = "LimitExceeded.DeliveryFrequencyLimit"
            case phoneNumberCountLimit = "LimitExceeded.PhoneNumberCountLimit"
            case phoneNumberDailyLimit = "LimitExceeded.PhoneNumberDailyLimit"
            case phoneNumberOneHourLimit = "LimitExceeded.PhoneNumberOneHourLimit"
            case phoneNumberSameContentDailyLimit = "LimitExceeded.PhoneNumberSameContentDailyLimit"
            case phoneNumberThirtySecondLimit = "LimitExceeded.PhoneNumberThirtySecondLimit"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 业务短信国家/地区日下发条数超过设定的上限，可自行到控制台应用管理&gt;基础配置下调整国际港澳台短信发送限制。
        public static var appCountryOrRegionDailyLimit: LimitExceeded {
            LimitExceeded(.appCountryOrRegionDailyLimit)
        }
        
        /// 业务短信国家/地区不在国际港澳台短信发送限制设置的列表中而禁发，可自行到控制台应用管理&gt;基础配置下调整国际港澳台短信发送限制。
        public static var appCountryOrRegionInBlacklist: LimitExceeded {
            LimitExceeded(.appCountryOrRegionInBlacklist)
        }
        
        /// 业务短信日下发条数超过设定的上限 ，可自行到控制台调整短信频率限制策略。
        public static var appDailyLimit: LimitExceeded {
            LimitExceeded(.appDailyLimit)
        }
        
        /// 业务短信国际/港澳台日下发条数超过设定的上限，可自行到控制台应用管理&gt;基础配置下调整发送总量阈值。
        public static var appGlobalDailyLimit: LimitExceeded {
            LimitExceeded(.appGlobalDailyLimit)
        }
        
        /// 业务短信中国大陆日下发条数超过设定的上限，可自行到控制台应用管理&gt;基础配置下调整发送总量阈值。
        public static var appMainlandChinaDailyLimit: LimitExceeded {
            LimitExceeded(.appMainlandChinaDailyLimit)
        }
        
        /// 短信日下发条数超过设定的上限 (国际/港澳台)，如需调整限制，可联系 <a href="https://cloud.tencent.com/document/product/382/3773">腾讯云短信小助手</a>。
        public static var dailyLimit: LimitExceeded {
            LimitExceeded(.dailyLimit)
        }
        
        /// 下发短信命中了频率限制策略，可自行到控制台调整短信频率限制策略，如有其他需求请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
        public static var deliveryFrequencyLimit: LimitExceeded {
            LimitExceeded(.deliveryFrequencyLimit)
        }
        
        /// 调用接口单次提交的手机号个数超过200个，请遵守 API 接口输入参数 PhoneNumberSet 描述。
        public static var phoneNumberCountLimit: LimitExceeded {
            LimitExceeded(.phoneNumberCountLimit)
        }
        
        /// 单个手机号日下发短信条数超过设定的上限，可自行到控制台调整短信频率限制策略。
        public static var phoneNumberDailyLimit: LimitExceeded {
            LimitExceeded(.phoneNumberDailyLimit)
        }
        
        /// 单个手机号1小时内下发短信条数超过设定的上限，可自行到控制台调整短信频率限制策略。
        public static var phoneNumberOneHourLimit: LimitExceeded {
            LimitExceeded(.phoneNumberOneHourLimit)
        }
        
        /// 单个手机号下发相同内容超过设定的上限，可自行到控制台调整短信频率限制策略。
        public static var phoneNumberSameContentDailyLimit: LimitExceeded {
            LimitExceeded(.phoneNumberSameContentDailyLimit)
        }
        
        /// 单个手机号30秒内下发短信条数超过设定的上限，可自行到控制台调整短信频率限制策略。
        public static var phoneNumberThirtySecondLimit: LimitExceeded {
            LimitExceeded(.phoneNumberThirtySecondLimit)
        }
    }
}

extension TCSmsError.LimitExceeded: Equatable {
    public static func == (lhs: TCSmsError.LimitExceeded, rhs: TCSmsError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSmsError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSmsError.LimitExceeded {
    public func toSmsError() -> TCSmsError {
        guard let code = TCSmsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCSmsError(code, context: self.context)
    }
}