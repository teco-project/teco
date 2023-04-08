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

import Logging
import NIOCore
import TecoCore

extension Cdb {
    /// DescribeRemoteBackupConfig请求参数结构体
    public struct DescribeRemoteBackupConfigRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeRemoteBackupConfig返回参数结构体
    public struct DescribeRemoteBackupConfigResponse: TCResponseModel {
        /// 异地备份保留天时间，单位为天
        public let expireDays: Int64

        /// 异地数据备份开关，off - 关闭异地备份，on-开启异地备份
        public let remoteBackupSave: String

        /// 异地日志备份开关，off - 关闭异地备份，on-开启异地备份，只有在参数RemoteBackupSave为on时，RemoteBinlogSave参数才可设置为on
        public let remoteBinlogSave: String

        /// 用户已设置异地备份地域列表
        public let remoteRegion: [String]

        /// 用户可设置异地备份地域列表
        public let regionList: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case expireDays = "ExpireDays"
            case remoteBackupSave = "RemoteBackupSave"
            case remoteBinlogSave = "RemoteBinlogSave"
            case remoteRegion = "RemoteRegion"
            case regionList = "RegionList"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库异地备份配置信息
    ///
    /// 本接口(DescribeRemoteBackupConfig)用于查询数据库异地备份配置信息。
    @inlinable
    public func describeRemoteBackupConfig(_ input: DescribeRemoteBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRemoteBackupConfigResponse> {
        self.client.execute(action: "DescribeRemoteBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库异地备份配置信息
    ///
    /// 本接口(DescribeRemoteBackupConfig)用于查询数据库异地备份配置信息。
    @inlinable
    public func describeRemoteBackupConfig(_ input: DescribeRemoteBackupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRemoteBackupConfigResponse {
        try await self.client.execute(action: "DescribeRemoteBackupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库异地备份配置信息
    ///
    /// 本接口(DescribeRemoteBackupConfig)用于查询数据库异地备份配置信息。
    @inlinable
    public func describeRemoteBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRemoteBackupConfigResponse> {
        self.describeRemoteBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据库异地备份配置信息
    ///
    /// 本接口(DescribeRemoteBackupConfig)用于查询数据库异地备份配置信息。
    @inlinable
    public func describeRemoteBackupConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRemoteBackupConfigResponse {
        try await self.describeRemoteBackupConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
