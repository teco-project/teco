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

extension Vpc {
    /// DescribeSgSnapshotFileContent请求参数结构体
    public struct DescribeSgSnapshotFileContentRequest: TCRequestModel {
        /// 快照策略Id。
        public let snapshotPolicyId: String

        /// 快照文件Id。
        public let snapshotFileId: String

        /// 安全组Id。
        public let securityGroupId: String

        public init(snapshotPolicyId: String, snapshotFileId: String, securityGroupId: String) {
            self.snapshotPolicyId = snapshotPolicyId
            self.snapshotFileId = snapshotFileId
            self.securityGroupId = securityGroupId
        }

        enum CodingKeys: String, CodingKey {
            case snapshotPolicyId = "SnapshotPolicyId"
            case snapshotFileId = "SnapshotFileId"
            case securityGroupId = "SecurityGroupId"
        }
    }

    /// DescribeSgSnapshotFileContent返回参数结构体
    public struct DescribeSgSnapshotFileContentResponse: TCResponseModel {
        /// 实例Id，即安全组Id。
        public let instanceId: String

        /// 快照策略Id。
        public let snapshotPolicyId: String

        /// 快照文件Id。
        public let snapshotFileId: String

        /// 备份时间。
        public let backupTime: String

        /// 操作者。
        public let `operator`: String

        /// 原始数据。
        public let originalData: [SecurityGroupPolicy]

        /// 备份数据。
        public let backupData: [SecurityGroupPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case snapshotPolicyId = "SnapshotPolicyId"
            case snapshotFileId = "SnapshotFileId"
            case backupTime = "BackupTime"
            case `operator` = "Operator"
            case originalData = "OriginalData"
            case backupData = "BackupData"
            case requestId = "RequestId"
        }
    }

    /// 查询安全组快照文件内容
    ///
    /// 本接口（DescribeSgSnapshotFileContent）用于查询安全组快照文件内容。
    @inlinable
    public func describeSgSnapshotFileContent(_ input: DescribeSgSnapshotFileContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSgSnapshotFileContentResponse> {
        self.client.execute(action: "DescribeSgSnapshotFileContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全组快照文件内容
    ///
    /// 本接口（DescribeSgSnapshotFileContent）用于查询安全组快照文件内容。
    @inlinable
    public func describeSgSnapshotFileContent(_ input: DescribeSgSnapshotFileContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSgSnapshotFileContentResponse {
        try await self.client.execute(action: "DescribeSgSnapshotFileContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全组快照文件内容
    ///
    /// 本接口（DescribeSgSnapshotFileContent）用于查询安全组快照文件内容。
    @inlinable
    public func describeSgSnapshotFileContent(snapshotPolicyId: String, snapshotFileId: String, securityGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSgSnapshotFileContentResponse> {
        let input = DescribeSgSnapshotFileContentRequest(snapshotPolicyId: snapshotPolicyId, snapshotFileId: snapshotFileId, securityGroupId: securityGroupId)
        return self.client.execute(action: "DescribeSgSnapshotFileContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全组快照文件内容
    ///
    /// 本接口（DescribeSgSnapshotFileContent）用于查询安全组快照文件内容。
    @inlinable
    public func describeSgSnapshotFileContent(snapshotPolicyId: String, snapshotFileId: String, securityGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSgSnapshotFileContentResponse {
        let input = DescribeSgSnapshotFileContentRequest(snapshotPolicyId: snapshotPolicyId, snapshotFileId: snapshotFileId, securityGroupId: securityGroupId)
        return try await self.client.execute(action: "DescribeSgSnapshotFileContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
