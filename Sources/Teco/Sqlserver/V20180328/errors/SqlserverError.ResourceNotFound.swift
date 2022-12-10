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

extension TCSqlserverError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case accountNotExist = "ResourceNotFound.AccountNotExist"
            case backupNotFound = "ResourceNotFound.BackupNotFound"
            case dbNotExit = "ResourceNotFound.DBNotExit"
            case dbNotFound = "ResourceNotFound.DBNotFound"
            case fullBackupMigrationNotExist = "ResourceNotFound.FullBackupMigrationNotExist"
            case increBackupMigrationNotExist = "ResourceNotFound.IncreBackupMigrationNotExist"
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
            case paramsNotFound = "ResourceNotFound.ParamsNotFound"
            case vpcNotExist = "ResourceNotFound.VpcNotExist"
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
        
        /// 账号不存在。
        public static var accountNotExist: ResourceNotFound {
            ResourceNotFound(.accountNotExist)
        }
        
        /// 备份不存在。
        public static var backupNotFound: ResourceNotFound {
            ResourceNotFound(.backupNotFound)
        }
        
        /// 数据库不存在。
        public static var dbNotExit: ResourceNotFound {
            ResourceNotFound(.dbNotExit)
        }
        
        /// 数据库不存在。
        public static var dbNotFound: ResourceNotFound {
            ResourceNotFound(.dbNotFound)
        }
        
        /// 全量备份导入任务不存在。
        public static var fullBackupMigrationNotExist: ResourceNotFound {
            ResourceNotFound(.fullBackupMigrationNotExist)
        }
        
        /// 增量备份导入任务不存在。
        public static var increBackupMigrationNotExist: ResourceNotFound {
            ResourceNotFound(.increBackupMigrationNotExist)
        }
        
        /// 实例不存在。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }
        
        /// 参数未找到。
        public static var paramsNotFound: ResourceNotFound {
            ResourceNotFound(.paramsNotFound)
        }
        
        /// VPC网络不存在。
        public static var vpcNotExist: ResourceNotFound {
            ResourceNotFound(.vpcNotExist)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCSqlserverError.ResourceNotFound: Equatable {
    public static func == (lhs: TCSqlserverError.ResourceNotFound, rhs: TCSqlserverError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSqlserverError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSqlserverError.ResourceNotFound {
    public func toSqlserverError() -> TCSqlserverError {
        guard let code = TCSqlserverError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCSqlserverError(code, context: self.context)
    }
}