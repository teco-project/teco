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

extension TCTkeError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case asCommonError = "InvalidParameter.AsCommonError"
            case cidrConflictWithOtherCluster = "InvalidParameter.CidrConflictWithOtherCluster"
            case cidrConflictWithOtherRoute = "InvalidParameter.CidrConflictWithOtherRoute"
            case cidrConflictWithVpcCidr = "InvalidParameter.CidrConflictWithVpcCidr"
            case cidrConflictWithVpcGlobalRoute = "InvalidParameter.CidrConflictWithVpcGlobalRoute"
            case cidrInvali = "InvalidParameter.CidrInvali"
            case cidrInvalid = "InvalidParameter.CidrInvalid"
            case cidrMaskSizeOutOfRange = "InvalidParameter.CIDRMaskSizeOutOfRange"
            case cidrOutOfRouteTable = "InvalidParameter.CidrOutOfRouteTable"
            case clusterNotFound = "InvalidParameter.ClusterNotFound"
            case gatewayAlreadyAssociatedCidr = "InvalidParameter.GatewayAlreadyAssociatedCidr"
            case invalidPrivateNetworkCIDR = "InvalidParameter.InvalidPrivateNetworkCIDR"
            case osNotSupport = "InvalidParameter.OsNotSupport"
            case param = "InvalidParameter.Param"
            case promClusterNotFound = "InvalidParameter.PromClusterNotFound"
            case promInstanceNotFound = "InvalidParameter.PromInstanceNotFound"
            case resourceNotFound = "InvalidParameter.ResourceNotFound"
            case routeTableNotEmpty = "InvalidParameter.RouteTableNotEmpty"
            case other = "InvalidParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 弹性伸缩组创建参数错误。
        public static var asCommonError: InvalidParameter {
            InvalidParameter(.asCommonError)
        }
        
        /// CIDR和其他集群CIDR冲突。
        public static var cidrConflictWithOtherCluster: InvalidParameter {
            InvalidParameter(.cidrConflictWithOtherCluster)
        }
        
        /// 创建的路由与已存在的其他路由产生冲突。
        public static var cidrConflictWithOtherRoute: InvalidParameter {
            InvalidParameter(.cidrConflictWithOtherRoute)
        }
        
        /// CIDR和vpc的CIDR冲突。
        public static var cidrConflictWithVpcCidr: InvalidParameter {
            InvalidParameter(.cidrConflictWithVpcCidr)
        }
        
        /// 创建的路由与VPC下已存在的全局路由产生冲突。
        public static var cidrConflictWithVpcGlobalRoute: InvalidParameter {
            InvalidParameter(.cidrConflictWithVpcGlobalRoute)
        }
        
        /// CIDR无效。
        ///
        /// 请提交工单联系我们协助处理
        public static var cidrInvali: InvalidParameter {
            InvalidParameter(.cidrInvali)
        }
        
        /// 参数错误，CIDR不符合规范。
        ///
        /// 请检查提交的CIDR相关参数是否合法。
        public static var cidrInvalid: InvalidParameter {
            InvalidParameter(.cidrInvalid)
        }
        
        /// CIDR掩码超出范围(集群CIDR范围 最小值: 10 最大值: 24)。
        public static var cidrMaskSizeOutOfRange: InvalidParameter {
            InvalidParameter(.cidrMaskSizeOutOfRange)
        }
        
        /// CIDR不在路由表之内。
        public static var cidrOutOfRouteTable: InvalidParameter {
            InvalidParameter(.cidrOutOfRouteTable)
        }
        
        /// 集群ID不存在。
        public static var clusterNotFound: InvalidParameter {
            InvalidParameter(.clusterNotFound)
        }
        
        /// 下一跳地址已关联CIDR。
        public static var gatewayAlreadyAssociatedCidr: InvalidParameter {
            InvalidParameter(.gatewayAlreadyAssociatedCidr)
        }
        
        /// 无效的私有CIDR网段。
        public static var invalidPrivateNetworkCIDR: InvalidParameter {
            InvalidParameter(.invalidPrivateNetworkCIDR)
        }
        
        /// 请向腾讯云提工单寻求支持。
        public static var osNotSupport: InvalidParameter {
            InvalidParameter(.osNotSupport)
        }
        
        /// 参数错误。
        public static var param: InvalidParameter {
            InvalidParameter(.param)
        }
        
        /// Prometheus未关联本集群。
        public static var promClusterNotFound: InvalidParameter {
            InvalidParameter(.promClusterNotFound)
        }
        
        /// Prometheus实例不存在。
        public static var promInstanceNotFound: InvalidParameter {
            InvalidParameter(.promInstanceNotFound)
        }
        
        /// 资源未找到。
        public static var resourceNotFound: InvalidParameter {
            InvalidParameter(.resourceNotFound)
        }
        
        /// 路由表非空。
        public static var routeTableNotEmpty: InvalidParameter {
            InvalidParameter(.routeTableNotEmpty)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCTkeError.InvalidParameter: Equatable {
    public static func == (lhs: TCTkeError.InvalidParameter, rhs: TCTkeError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTkeError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTkeError.InvalidParameter {
    /// - Returns: ``TCTkeError`` that holds the same error and context.
    public func toTkeError() -> TCTkeError {
        guard let code = TCTkeError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTkeError(code, context: self.context)
    }
}

extension TCTkeError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
