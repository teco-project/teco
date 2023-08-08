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

extension Ssm {
    /// 凭据关联产品时被赋予的权限
    public struct ProductPrivilegeUnit: TCInputModel {
        /// 权限名称，当前可选：
        /// GlobalPrivileges
        /// DatabasePrivileges
        /// TablePrivileges
        /// ColumnPrivileges
        ///
        /// 当权限为DatabasePrivileges时，必须通过参数Database指定数据库名；
        ///
        /// 当权限为TablePrivileges时，必须通过参数Database和TableName指定数据库名以及数据库中的表名；
        ///
        /// 当权限为ColumnPrivileges时，必须通过参数Database、TableName和CoulmnName指定数据库、数据库中的表名以及表中的列名。
        public let privilegeName: String

        /// 权限列表。
        /// 对于Mysql产品来说，可选权限值为：
        ///
        /// 1. GlobalPrivileges 中权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "PROCESS", "DROP","REFERENCES","INDEX","ALTER","SHOW DATABASES","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        /// 注意，不传该参数表示清除该权限。
        ///
        /// 2. DatabasePrivileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        /// 注意，不传该参数表示清除该权限。
        ///
        /// 3. TablePrivileges 权限的可选值为：权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        /// 注意，不传该参数表示清除该权限。
        ///
        /// 4. ColumnPrivileges 权限的可选值为："SELECT","INSERT","UPDATE","REFERENCES"。
        /// 注意，不传该参数表示清除该权限。
        public let privileges: [String]

        /// 仅当PrivilegeName为DatabasePrivileges时这个值才有效。
        public let database: String?

        /// 仅当PrivilegeName为TablePrivileges时这个值才有效，并且此时需要填充Database显式指明所在的数据库实例。
        public let tableName: String?

        /// 仅当PrivilegeName为ColumnPrivileges时这个值才生效，并且此时必须填充：
        /// Database - 显式指明所在的数据库实例。
        /// TableName - 显式指明所在表
        public let columnName: String?

        public init(privilegeName: String, privileges: [String], database: String? = nil, tableName: String? = nil, columnName: String? = nil) {
            self.privilegeName = privilegeName
            self.privileges = privileges
            self.database = database
            self.tableName = tableName
            self.columnName = columnName
        }

        enum CodingKeys: String, CodingKey {
            case privilegeName = "PrivilegeName"
            case privileges = "Privileges"
            case database = "Database"
            case tableName = "TableName"
            case columnName = "ColumnName"
        }
    }

    /// 凭据的基础信息
    public struct SecretMetadata: TCOutputModel {
        /// 凭据名称
        public let secretName: String

        /// 凭据的描述信息
        public let description: String

        /// 用于加密凭据的KMS KeyId
        public let kmsKeyId: String

        /// 创建者UIN
        public let createUin: UInt64

        /// 凭据状态：Enabled、Disabled、PendingDelete、Creating、Failed
        public let status: String

        /// 凭据删除日期，对于status为PendingDelete 的有效，unix时间戳
        public let deleteTime: UInt64

        /// 凭据创建时间，unix时间戳
        public let createTime: UInt64

        /// 用于加密凭据的KMS CMK类型，DEFAULT 表示SecretsManager 创建的默认密钥， CUSTOMER 表示用户指定的密钥
        public let kmsKeyType: String

        /// 1:--开启轮转；0--禁止轮转
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rotationStatus: Int64?

        /// 下一次轮转开始时间，uinx 时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextRotationTime: UInt64?

        /// 0 -- 用户自定义凭据；
        /// 1 -- 云产品凭据；
        /// 2 -- SSH密钥对凭据；
        /// 3 -- 云API密钥对凭据；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secretType: Int64?

        /// 云产品名称，仅在SecretType为1，即凭据类型为云产品凭据时生效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?

        /// 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对凭据的名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceName: String?

        /// 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所属的项目ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectID: Int64?

        /// 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所关联的CVM实例ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let associatedInstanceIDs: [String]?

        /// 当凭据类型为云API密钥对凭据时，此字段有效，用于表示云API密钥对所属的用户UIN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let targetUin: UInt64?

        /// 轮转的频率，以天作为单位，在轮转开启状态下生效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rotationFrequency: Int64?

        /// 云产品凭据对应的云产品实例 ID 号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceID: String?

        /// 用户指定的轮转开始时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rotationBeginTime: String?

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case description = "Description"
            case kmsKeyId = "KmsKeyId"
            case createUin = "CreateUin"
            case status = "Status"
            case deleteTime = "DeleteTime"
            case createTime = "CreateTime"
            case kmsKeyType = "KmsKeyType"
            case rotationStatus = "RotationStatus"
            case nextRotationTime = "NextRotationTime"
            case secretType = "SecretType"
            case productName = "ProductName"
            case resourceName = "ResourceName"
            case projectID = "ProjectID"
            case associatedInstanceIDs = "AssociatedInstanceIDs"
            case targetUin = "TargetUin"
            case rotationFrequency = "RotationFrequency"
            case resourceID = "ResourceID"
            case rotationBeginTime = "RotationBeginTime"
        }
    }

    /// 标签键和标签值
    public struct Tag: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        public init(tagKey: String, tagValue: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 标签过滤器
    public struct TagFilter: TCInputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: [String]?

        public init(tagKey: String, tagValue: [String]? = nil) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// 凭据版本号列表信息
    public struct VersionInfo: TCOutputModel {
        /// 版本号。
        public let versionId: String

        /// 创建时间，unix时间戳。
        public let createTime: UInt64

        enum CodingKeys: String, CodingKey {
            case versionId = "VersionId"
            case createTime = "CreateTime"
        }
    }
}
