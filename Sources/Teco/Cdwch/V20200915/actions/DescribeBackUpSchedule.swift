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

extension Cdwch {
    /// DescribeBackUpSchedule请求参数结构体
    public struct DescribeBackUpScheduleRequest: TCRequestModel {
        /// 集群id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeBackUpSchedule返回参数结构体
    public struct DescribeBackUpScheduleResponse: TCResponseModel {
        /// 备份是否开启
        public let backUpOpened: Bool

        /// 元数据备份策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metaStrategy: ScheduleStrategy?

        /// 表数据备份策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataStrategy: ScheduleStrategy?

        /// 备份表列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backUpContents: [BackupTableContent]?

        /// 备份的状态
        public let backUpStatus: Int64

        /// 错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case backUpOpened = "BackUpOpened"
            case metaStrategy = "MetaStrategy"
            case dataStrategy = "DataStrategy"
            case backUpContents = "BackUpContents"
            case backUpStatus = "BackUpStatus"
            case errorMsg = "ErrorMsg"
            case requestId = "RequestId"
        }
    }

    /// 查询备份策略信息
    @inlinable
    public func describeBackUpSchedule(_ input: DescribeBackUpScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackUpScheduleResponse> {
        self.client.execute(action: "DescribeBackUpSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份策略信息
    @inlinable
    public func describeBackUpSchedule(_ input: DescribeBackUpScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackUpScheduleResponse {
        try await self.client.execute(action: "DescribeBackUpSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份策略信息
    @inlinable
    public func describeBackUpSchedule(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackUpScheduleResponse> {
        self.describeBackUpSchedule(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份策略信息
    @inlinable
    public func describeBackUpSchedule(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackUpScheduleResponse {
        try await self.describeBackUpSchedule(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
