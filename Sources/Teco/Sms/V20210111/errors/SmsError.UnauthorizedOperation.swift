//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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
    public struct UnauthorizedOperation: TCSmsErrorType {
        enum Code: String {
            case individualUserMarketingSmsPermissionDeny = "UnauthorizedOperation.IndividualUserMarketingSmsPermissionDeny"
            case requestIpNotInWhitelist = "UnauthorizedOperation.RequestIpNotInWhitelist"
            case requestPermissionDeny = "UnauthorizedOperation.RequestPermissionDeny"
            case sdkAppIdIsDisabled = "UnauthorizedOperation.SdkAppIdIsDisabled"
            case serivceSuspendDueToArrears = "UnauthorizedOperation.SerivceSuspendDueToArrears"
            case smsSdkAppIdVerifyFail = "UnauthorizedOperation.SmsSdkAppIdVerifyFail"
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

        /// 个人用户没有发营销短信的权限，请参考 <a href="https://cloud.tencent.com/document/product/382/13444">权益区别</a>。
        public static var individualUserMarketingSmsPermissionDeny: UnauthorizedOperation {
            UnauthorizedOperation(.individualUserMarketingSmsPermissionDeny)
        }

        /// 请求 IP 不在白名单中，您配置了校验请求来源 IP，但是检测到当前请求 IP 不在配置列表中，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
        public static var requestIpNotInWhitelist: UnauthorizedOperation {
            UnauthorizedOperation(.requestIpNotInWhitelist)
        }

        /// 请求没有权限，请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
        public static var requestPermissionDeny: UnauthorizedOperation {
            UnauthorizedOperation(.requestPermissionDeny)
        }

        /// 此 SdkAppId 禁止提供服务，如有需要请联系 <a href="https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81">腾讯云短信小助手</a>。
        public static var sdkAppIdIsDisabled: UnauthorizedOperation {
            UnauthorizedOperation(.sdkAppIdIsDisabled)
        }

        /// 欠费被停止服务，可自行登录腾讯云充值来缴清欠款。
        public static var serivceSuspendDueToArrears: UnauthorizedOperation {
            UnauthorizedOperation(.serivceSuspendDueToArrears)
        }

        /// SmsSdkAppId 校验失败，请检查 <a href="https://console.cloud.tencent.com/smsv2/app-manage">SmsSdkAppId</a> 是否属于 <a href="https://console.cloud.tencent.com/cam/capi">云API密钥</a> 的关联账户。
        ///
        /// 可参考 [短信发送提示：UnauthorizedOperation.SmsSdkAppIdVerifyFail 如何处理](https://cloud.tencent.com/document/product/382/9558#.E7.9F.AD.E4.BF.A1.E5.8F.91.E9.80.81.E6.8F.90.E7.A4.BA.EF.BC.9Aunauthorizedoperation.smssdkappidverifyfail-.E5.A6.82.E4.BD.95.E5.A4.84.E7.90.86.EF.BC.9F)，若存在疑问可联系 [腾讯云短信小助手](https://cloud.tencent.com/document/product/382/3773#.E6.8A.80.E6.9C.AF.E4.BA.A4.E6.B5.81)。
        public static var smsSdkAppIdVerifyFail: UnauthorizedOperation {
            UnauthorizedOperation(.smsSdkAppIdVerifyFail)
        }

        public func asSmsError() -> TCSmsError {
            let code: TCSmsError.Code
            switch self.error {
            case .individualUserMarketingSmsPermissionDeny:
                code = .unauthorizedOperation_IndividualUserMarketingSmsPermissionDeny
            case .requestIpNotInWhitelist:
                code = .unauthorizedOperation_RequestIpNotInWhitelist
            case .requestPermissionDeny:
                code = .unauthorizedOperation_RequestPermissionDeny
            case .sdkAppIdIsDisabled:
                code = .unauthorizedOperation_SdkAppIdIsDisabled
            case .serivceSuspendDueToArrears:
                code = .unauthorizedOperation_SerivceSuspendDueToArrears
            case .smsSdkAppIdVerifyFail:
                code = .unauthorizedOperation_SmsSdkAppIdVerifyFail
            }
            return TCSmsError(code, context: self.context)
        }
    }
}
