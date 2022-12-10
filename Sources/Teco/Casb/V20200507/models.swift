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

extension Casb {
    /// 策略迁移表信息筛选
    public struct CryptoCopyColumnPolicyTableFilter: TCInputModel {
        /// 数据库名称
        public let databaseName: String
        
        /// 表名称
        public let tableNameSet: [String]?
        
        public init (databaseName: String, tableNameSet: [String]?) {
            self.databaseName = databaseName
            self.tableNameSet = tableNameSet
        }
        
        enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case tableNameSet = "TableNameSet"
        }
    }
}
