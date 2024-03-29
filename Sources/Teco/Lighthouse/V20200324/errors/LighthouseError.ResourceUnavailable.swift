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

extension TCLighthouseError {
    public struct ResourceUnavailable: TCLighthouseErrorType {
        enum Code: String {
            case blueprintInvalid = "ResourceUnavailable.BlueprintInvalid"
            case blueprintUnavailable = "ResourceUnavailable.BlueprintUnavailable"
            case bundleUnavailable = "ResourceUnavailable.BundleUnavailable"
            case cannotApplyEmptyFirewallTemplate = "ResourceUnavailable.CannotApplyEmptyFirewallTemplate"
            case dockerUnavailable = "ResourceUnavailable.DockerUnavailable"
            case tatAgentUnavailable = "ResourceUnavailable.TATAgentUnavailable"
            case tatServiceError = "ResourceUnavailable.TATServiceError"
            case other = "ResourceUnavailable"
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

        /// 指定实例镜像不符合要求。
        public static var blueprintInvalid: ResourceUnavailable {
            ResourceUnavailable(.blueprintInvalid)
        }

        /// 镜像资源不可用。
        public static var blueprintUnavailable: ResourceUnavailable {
            ResourceUnavailable(.blueprintUnavailable)
        }

        /// 套餐不可用。
        public static var bundleUnavailable: ResourceUnavailable {
            ResourceUnavailable(.bundleUnavailable)
        }

        public static var cannotApplyEmptyFirewallTemplate: ResourceUnavailable {
            ResourceUnavailable(.cannotApplyEmptyFirewallTemplate)
        }

        /// Docker资源不可用。
        public static var dockerUnavailable: ResourceUnavailable {
            ResourceUnavailable(.dockerUnavailable)
        }

        /// TAT agent不可用。
        public static var tatAgentUnavailable: ResourceUnavailable {
            ResourceUnavailable(.tatAgentUnavailable)
        }

        /// TAT 服务错误。
        public static var tatServiceError: ResourceUnavailable {
            ResourceUnavailable(.tatServiceError)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .blueprintInvalid:
                code = .resourceUnavailable_BlueprintInvalid
            case .blueprintUnavailable:
                code = .resourceUnavailable_BlueprintUnavailable
            case .bundleUnavailable:
                code = .resourceUnavailable_BundleUnavailable
            case .cannotApplyEmptyFirewallTemplate:
                code = .resourceUnavailable_CannotApplyEmptyFirewallTemplate
            case .dockerUnavailable:
                code = .resourceUnavailable_DockerUnavailable
            case .tatAgentUnavailable:
                code = .resourceUnavailable_TATAgentUnavailable
            case .tatServiceError:
                code = .resourceUnavailable_TATServiceError
            case .other:
                code = .resourceUnavailable
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
