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

extension TCAsError {
    public struct InvalidParameter: TCAsErrorType {
        enum Code: String {
            case actionNotFound = "InvalidParameter.ActionNotFound"
            case conflict = "InvalidParameter.Conflict"
            case hostNameUnavailable = "InvalidParameter.HostNameUnavailable"
            case inScenario = "InvalidParameter.InScenario"
            case invalidCombination = "InvalidParameter.InvalidCombination"
            case loadBalancerNotInAutoScalingGroup = "InvalidParameter.LoadBalancerNotInAutoScalingGroup"
            case mustOneParameter = "InvalidParameter.MustOneParameter"
            case parameterDeprecated = "InvalidParameter.ParameterDeprecated"
            case parameterMustBeDeleted = "InvalidParameter.ParameterMustBeDeleted"
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

        /// 无效的Action请求。
        ///
        /// 请检查Action参数是否正确。
        public static var actionNotFound: InvalidParameter {
            InvalidParameter(.actionNotFound)
        }

        /// 参数冲突，指定的多个参数冲突，不能同时存在。
        public static var conflict: InvalidParameter {
            InvalidParameter(.conflict)
        }

        /// 主机名参数不适用于该镜像。
        public static var hostNameUnavailable: InvalidParameter {
            InvalidParameter(.hostNameUnavailable)
        }

        /// 在特定场景下的不合法参数。
        public static var inScenario: InvalidParameter {
            InvalidParameter(.inScenario)
        }

        /// 无效的参数组合。
        public static var invalidCombination: InvalidParameter {
            InvalidParameter(.invalidCombination)
        }

        /// 指定的负载均衡器在当前伸缩组中没有找到。
        public static var loadBalancerNotInAutoScalingGroup: InvalidParameter {
            InvalidParameter(.loadBalancerNotInAutoScalingGroup)
        }

        /// 参数缺失，两种参数之中必须指定其中一个。
        public static var mustOneParameter: InvalidParameter {
            InvalidParameter(.mustOneParameter)
        }

        /// 该参数已废弃。
        public static var parameterDeprecated: InvalidParameter {
            InvalidParameter(.parameterDeprecated)
        }

        /// 部分参数存在互斥应该删掉。
        public static var parameterMustBeDeleted: InvalidParameter {
            InvalidParameter(.parameterMustBeDeleted)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .actionNotFound:
                code = .invalidParameter_ActionNotFound
            case .conflict:
                code = .invalidParameter_Conflict
            case .hostNameUnavailable:
                code = .invalidParameter_HostNameUnavailable
            case .inScenario:
                code = .invalidParameter_InScenario
            case .invalidCombination:
                code = .invalidParameter_InvalidCombination
            case .loadBalancerNotInAutoScalingGroup:
                code = .invalidParameter_LoadBalancerNotInAutoScalingGroup
            case .mustOneParameter:
                code = .invalidParameter_MustOneParameter
            case .parameterDeprecated:
                code = .invalidParameter_ParameterDeprecated
            case .parameterMustBeDeleted:
                code = .invalidParameter_ParameterMustBeDeleted
            case .other:
                code = .invalidParameter
            }
            return TCAsError(code, context: self.context)
        }
    }
}
