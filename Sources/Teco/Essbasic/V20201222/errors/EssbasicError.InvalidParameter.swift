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

extension TCEssbasicError {
    public struct InvalidParameter: TCEssbasicErrorType {
        enum Code: String {
            case bizApproverAlreadyExists = "InvalidParameter.BizApproverAlreadyExists"
            case invalidVerifyResult = "InvalidParameter.InvalidVerifyResult"
            case status = "InvalidParameter.Status"
            case other = "InvalidParameter"
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

        /// 重复添加签署人。
        ///
        /// 请参考错误信息，检查合同签署人手机号或身份证号，是否唯一。
        public static var bizApproverAlreadyExists: InvalidParameter {
            InvalidParameter(.bizApproverAlreadyExists)
        }

        /// 无效的意愿确认票据。
        ///
        /// 请输入正确的验证码，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var invalidVerifyResult: InvalidParameter {
            InvalidParameter(.invalidVerifyResult)
        }

        /// 状态异常。
        ///
        /// 请检查流程状态是否正确。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var status: InvalidParameter {
            InvalidParameter(.status)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .bizApproverAlreadyExists:
                code = .invalidParameter_BizApproverAlreadyExists
            case .invalidVerifyResult:
                code = .invalidParameter_InvalidVerifyResult
            case .status:
                code = .invalidParameter_Status
            case .other:
                code = .invalidParameter
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
