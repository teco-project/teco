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

extension TCLighthouseError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case blueprintIdNotFound = "ResourceNotFound.BlueprintIdNotFound"
            case blueprintNotFound = "ResourceNotFound.BlueprintNotFound"
            case diskIdNotFound = "ResourceNotFound.DiskIdNotFound"
            case diskNotFound = "ResourceNotFound.DiskNotFound"
            case firewallNotFound = "ResourceNotFound.FirewallNotFound"
            case firewallRulesNotFound = "ResourceNotFound.FirewallRulesNotFound"
            case instanceDataDiskNotFound = "ResourceNotFound.InstanceDataDiskNotFound"
            case instanceIdNotFound = "ResourceNotFound.InstanceIdNotFound"
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
            case keyIdNotFound = "ResourceNotFound.KeyIdNotFound"
            case privateBlueprintNotFound = "ResourceNotFound.PrivateBlueprintNotFound"
            case snapshotIdNotFound = "ResourceNotFound.SnapshotIdNotFound"
            case snapshotNotFound = "ResourceNotFound.SnapshotNotFound"
            case other = "ResourceNotFound"
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
        
        /// 镜像 ID 不存在。
        public static var blueprintIdNotFound: ResourceNotFound {
            ResourceNotFound(.blueprintIdNotFound)
        }
        
        /// 指定的镜像不存在。请检查镜像的BlueprintId是否正确。
        public static var blueprintNotFound: ResourceNotFound {
            ResourceNotFound(.blueprintNotFound)
        }
        
        /// 磁盘 ID 不存在。
        public static var diskIdNotFound: ResourceNotFound {
            ResourceNotFound(.diskIdNotFound)
        }
        
        /// 磁盘不存在。
        public static var diskNotFound: ResourceNotFound {
            ResourceNotFound(.diskNotFound)
        }
        
        /// 防火墙不存在。
        public static var firewallNotFound: ResourceNotFound {
            ResourceNotFound(.firewallNotFound)
        }
        
        /// 防火墙规则不存在。
        public static var firewallRulesNotFound: ResourceNotFound {
            ResourceNotFound(.firewallRulesNotFound)
        }
        
        /// 实例不存在挂载的数据盘。
        public static var instanceDataDiskNotFound: ResourceNotFound {
            ResourceNotFound(.instanceDataDiskNotFound)
        }
        
        /// 实例 ID 不存在。
        public static var instanceIdNotFound: ResourceNotFound {
            ResourceNotFound(.instanceIdNotFound)
        }
        
        /// 实例不存在。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }
        
        /// 密钥对 ID 不存在。
        public static var keyIdNotFound: ResourceNotFound {
            ResourceNotFound(.keyIdNotFound)
        }
        
        public static var privateBlueprintNotFound: ResourceNotFound {
            ResourceNotFound(.privateBlueprintNotFound)
        }
        
        /// 快照 ID 不存在。
        public static var snapshotIdNotFound: ResourceNotFound {
            ResourceNotFound(.snapshotIdNotFound)
        }
        
        /// 快照不存在。
        public static var snapshotNotFound: ResourceNotFound {
            ResourceNotFound(.snapshotNotFound)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCLighthouseError.ResourceNotFound: Equatable {
    public static func == (lhs: TCLighthouseError.ResourceNotFound, rhs: TCLighthouseError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLighthouseError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLighthouseError.ResourceNotFound {
    public func toLighthouseError() -> TCLighthouseError {
        guard let code = TCLighthouseError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCLighthouseError(code, context: self.context)
    }
}