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

import TecoCore

extension TCVmsError {
    public struct FailedOperation: TCVmsErrorType {
        enum Code: String {
            case accessUpstreamTimeout = "FailedOperation.AccessUpstreamTimeout"
            case containSensitiveWord = "FailedOperation.ContainSensitiveWord"
            case failResolvePacket = "FailedOperation.FailResolvePacket"
            case insufficientBalanceInVoicePackage = "FailedOperation.InsufficientBalanceInVoicePackage"
            case invalidJsonParameters = "FailedOperation.InvalidJsonParameters"
            case invalidParameters = "FailedOperation.InvalidParameters"
            case jsonParseFail = "FailedOperation.JsonParseFail"
            case parametersOtherError = "FailedOperation.ParametersOtherError"
            case phonenumberUnappliedOrExpired = "FailedOperation.PhonenumberUnappliedOrExpired"
            case templateIncorrectOrUnapproved = "FailedOperation.TemplateIncorrectOrUnapproved"
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

        /// 访问上下游模块超时。
        public static var accessUpstreamTimeout: FailedOperation {
            FailedOperation(.accessUpstreamTimeout)
        }

        /// 语音内容中含有敏感词，请[联系我们](https://cloud.tencent.com/document/product/1128/37720)沟通解决。
        public static var containSensitiveWord: FailedOperation {
            FailedOperation(.containSensitiveWord)
        }

        /// 后端请求包解析失败，通常由于没有遵守 API 接口说明规范导致的，请参见[1004错误详解](https://cloud.tencent.com/document/product/1128/38004#Q7)。
        public static var failResolvePacket: FailedOperation {
            FailedOperation(.failResolvePacket)
        }

        /// 套餐包余量不足，请及时[购买语音套餐包](https://cloud.tencent.com/document/product/1128#buyPackage)。
        public static var insufficientBalanceInVoicePackage: FailedOperation {
            FailedOperation(.insufficientBalanceInVoicePackage)
        }

        /// 无效 JSON，请核查发送的请求是否为标准的 JSON 格式。
        public static var invalidJsonParameters: FailedOperation {
            FailedOperation(.invalidJsonParameters)
        }

        /// 无效参数，请核查发送的请求参数是否为对应 API 所需参数。
        public static var invalidParameters: FailedOperation {
            FailedOperation(.invalidParameters)
        }

        /// 解析请求包体时候失败。
        public static var jsonParseFail: FailedOperation {
            FailedOperation(.jsonParseFail)
        }

        /// 语音未知错误，请[联系我们](https://cloud.tencent.com/document/product/1128/37720)沟通解决。
        public static var parametersOtherError: FailedOperation {
            FailedOperation(.parametersOtherError)
        }

        /// 未申请号码或申请的号码资源已过期，请及时支付月功能费用和信息服务费用，具体操作请参见[购买指南](https://cloud.tencent.com/document/product/1128)。
        public static var phonenumberUnappliedOrExpired: FailedOperation {
            FailedOperation(.phonenumberUnappliedOrExpired)
        }

        /// 模板未审核或请求的内容与审核通过的模板内容不匹配，请参见[1014错误详解](https://cloud.tencent.com/document/product/1128/38004
        public static var templateIncorrectOrUnapproved: FailedOperation {
            FailedOperation(.templateIncorrectOrUnapproved)
        }

        public func asVmsError() -> TCVmsError {
            let code: TCVmsError.Code
            switch self.error {
            case .accessUpstreamTimeout:
                code = .failedOperation_AccessUpstreamTimeout
            case .containSensitiveWord:
                code = .failedOperation_ContainSensitiveWord
            case .failResolvePacket:
                code = .failedOperation_FailResolvePacket
            case .insufficientBalanceInVoicePackage:
                code = .failedOperation_InsufficientBalanceInVoicePackage
            case .invalidJsonParameters:
                code = .failedOperation_InvalidJsonParameters
            case .invalidParameters:
                code = .failedOperation_InvalidParameters
            case .jsonParseFail:
                code = .failedOperation_JsonParseFail
            case .parametersOtherError:
                code = .failedOperation_ParametersOtherError
            case .phonenumberUnappliedOrExpired:
                code = .failedOperation_PhonenumberUnappliedOrExpired
            case .templateIncorrectOrUnapproved:
                code = .failedOperation_TemplateIncorrectOrUnapproved
            }
            return TCVmsError(code, context: self.context)
        }
    }
}
