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

extension Postgres {
    /// DescribeCloneDBInstanceSpec请求参数结构体
    public struct DescribeCloneDBInstanceSpecRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String

        /// 基础备份集ID，此入参和RecoveryTargetTime必须选择一个传入。如与RecoveryTargetTime参数同时设置，则以此参数为准。
        public let backupSetId: String?

        /// 恢复目标时间，此入参和BackupSetId必须选择一个传入。时区以东八区（UTC+8）为准。
        public let recoveryTargetTime: String?

        public init(dbInstanceId: String, backupSetId: String? = nil, recoveryTargetTime: String? = nil) {
            self.dbInstanceId = dbInstanceId
            self.backupSetId = backupSetId
            self.recoveryTargetTime = recoveryTargetTime
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case backupSetId = "BackupSetId"
            case recoveryTargetTime = "RecoveryTargetTime"
        }
    }

    /// DescribeCloneDBInstanceSpec返回参数结构体
    public struct DescribeCloneDBInstanceSpecResponse: TCResponseModel {
        /// 可购买的最小规格码。
        public let minSpecCode: String

        /// 可购买的最小磁盘容量，单位GB。
        public let minStorage: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case minSpecCode = "MinSpecCode"
            case minStorage = "MinStorage"
            case requestId = "RequestId"
        }
    }

    /// 查询克隆实例购买规格
    ///
    /// 本接口（DescribeCloneDBInstanceSpec）用于查询克隆实例可选择的最小规格，包括SpecCode和磁盘。
    @inlinable
    public func describeCloneDBInstanceSpec(_ input: DescribeCloneDBInstanceSpecRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloneDBInstanceSpecResponse > {
        self.client.execute(action: "DescribeCloneDBInstanceSpec", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询克隆实例购买规格
    ///
    /// 本接口（DescribeCloneDBInstanceSpec）用于查询克隆实例可选择的最小规格，包括SpecCode和磁盘。
    @inlinable
    public func describeCloneDBInstanceSpec(_ input: DescribeCloneDBInstanceSpecRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloneDBInstanceSpecResponse {
        try await self.client.execute(action: "DescribeCloneDBInstanceSpec", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询克隆实例购买规格
    ///
    /// 本接口（DescribeCloneDBInstanceSpec）用于查询克隆实例可选择的最小规格，包括SpecCode和磁盘。
    @inlinable
    public func describeCloneDBInstanceSpec(dbInstanceId: String, backupSetId: String? = nil, recoveryTargetTime: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloneDBInstanceSpecResponse > {
        self.describeCloneDBInstanceSpec(DescribeCloneDBInstanceSpecRequest(dbInstanceId: dbInstanceId, backupSetId: backupSetId, recoveryTargetTime: recoveryTargetTime), logger: logger, on: eventLoop)
    }

    /// 查询克隆实例购买规格
    ///
    /// 本接口（DescribeCloneDBInstanceSpec）用于查询克隆实例可选择的最小规格，包括SpecCode和磁盘。
    @inlinable
    public func describeCloneDBInstanceSpec(dbInstanceId: String, backupSetId: String? = nil, recoveryTargetTime: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloneDBInstanceSpecResponse {
        try await self.describeCloneDBInstanceSpec(DescribeCloneDBInstanceSpecRequest(dbInstanceId: dbInstanceId, backupSetId: backupSetId, recoveryTargetTime: recoveryTargetTime), logger: logger, on: eventLoop)
    }
}
