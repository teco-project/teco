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

extension TCEssbasicError {
    public struct LimitExceeded: TCEssbasicErrorType {
        enum Code: String {
            case callTimes = "LimitExceeded.CallTimes"
            case createFlowNum = "LimitExceeded.CreateFlowNum"
            case fileSize = "LimitExceeded.FileSize"
            case flowIds = "LimitExceeded.FlowIds"
            case flowInfos = "LimitExceeded.FlowInfos"
            case proxyOrganizationOperator = "LimitExceeded.ProxyOrganizationOperator"
            case other = "LimitExceeded"
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

        /// 超出调用次数限制。
        public static var callTimes: LimitExceeded {
            LimitExceeded(.callTimes)
        }

        /// 超出流程创建数量限制。
        public static var createFlowNum: LimitExceeded {
            LimitExceeded(.createFlowNum)
        }

        /// 文件大小限制。
        public static var fileSize: LimitExceeded {
            LimitExceeded(.fileSize)
        }

        /// 合同id数超出限制。
        public static var flowIds: LimitExceeded {
            LimitExceeded(.flowIds)
        }

        /// 超出流程数量限制。
        public static var flowInfos: LimitExceeded {
            LimitExceeded(.flowInfos)
        }

        /// 经办人数据超出。
        public static var proxyOrganizationOperator: LimitExceeded {
            LimitExceeded(.proxyOrganizationOperator)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .callTimes:
                code = .limitExceeded_CallTimes
            case .createFlowNum:
                code = .limitExceeded_CreateFlowNum
            case .fileSize:
                code = .limitExceeded_FileSize
            case .flowIds:
                code = .limitExceeded_FlowIds
            case .flowInfos:
                code = .limitExceeded_FlowInfos
            case .proxyOrganizationOperator:
                code = .limitExceeded_ProxyOrganizationOperator
            case .other:
                code = .limitExceeded
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
