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

extension Sqlserver {
    /// DescribeUploadIncrementalInfo请求参数结构体
    public struct DescribeUploadIncrementalInfoRequest: TCRequestModel {
        /// 导入目标实例ID
        public let instanceId: String

        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String

        /// 增量导入任务ID
        public let incrementalMigrationId: String

        public init(instanceId: String, backupMigrationId: String, incrementalMigrationId: String) {
            self.instanceId = instanceId
            self.backupMigrationId = backupMigrationId
            self.incrementalMigrationId = incrementalMigrationId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMigrationId = "BackupMigrationId"
            case incrementalMigrationId = "IncrementalMigrationId"
        }
    }

    /// DescribeUploadIncrementalInfo返回参数结构体
    public struct DescribeUploadIncrementalInfoResponse: TCResponseModel {
        /// 存储桶名称
        public let bucketName: String

        /// 存储桶地域信息
        public let region: String

        /// 存储路径
        public let path: String

        /// 临时密钥ID
        public let tmpSecretId: String

        /// 临时密钥Key
        public let tmpSecretKey: String

        /// 临时密钥Token
        public let xCosSecurityToken: String

        /// 临时密钥开始时间
        public let startTime: String

        /// 临时密钥到期时间
        public let expiredTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bucketName = "BucketName"
            case region = "Region"
            case path = "Path"
            case tmpSecretId = "TmpSecretId"
            case tmpSecretKey = "TmpSecretKey"
            case xCosSecurityToken = "XCosSecurityToken"
            case startTime = "StartTime"
            case expiredTime = "ExpiredTime"
            case requestId = "RequestId"
        }
    }

    /// 查询增量备份上传权限
    ///
    /// 本接口（DescribeUploadIncrementalInfo）用于查询增量备份上传权限。
    @inlinable
    public func describeUploadIncrementalInfo(_ input: DescribeUploadIncrementalInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUploadIncrementalInfoResponse> {
        self.client.execute(action: "DescribeUploadIncrementalInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询增量备份上传权限
    ///
    /// 本接口（DescribeUploadIncrementalInfo）用于查询增量备份上传权限。
    @inlinable
    public func describeUploadIncrementalInfo(_ input: DescribeUploadIncrementalInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadIncrementalInfoResponse {
        try await self.client.execute(action: "DescribeUploadIncrementalInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询增量备份上传权限
    ///
    /// 本接口（DescribeUploadIncrementalInfo）用于查询增量备份上传权限。
    @inlinable
    public func describeUploadIncrementalInfo(instanceId: String, backupMigrationId: String, incrementalMigrationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUploadIncrementalInfoResponse> {
        self.describeUploadIncrementalInfo(DescribeUploadIncrementalInfoRequest(instanceId: instanceId, backupMigrationId: backupMigrationId, incrementalMigrationId: incrementalMigrationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询增量备份上传权限
    ///
    /// 本接口（DescribeUploadIncrementalInfo）用于查询增量备份上传权限。
    @inlinable
    public func describeUploadIncrementalInfo(instanceId: String, backupMigrationId: String, incrementalMigrationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadIncrementalInfoResponse {
        try await self.describeUploadIncrementalInfo(DescribeUploadIncrementalInfoRequest(instanceId: instanceId, backupMigrationId: backupMigrationId, incrementalMigrationId: incrementalMigrationId), region: region, logger: logger, on: eventLoop)
    }
}
