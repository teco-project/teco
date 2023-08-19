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

extension Wedata {
    /// DescribeDrInstanceScriptContent请求参数结构体
    public struct DescribeDrInstanceScriptContentRequest: TCRequest {
        /// 项目id
        public let projectId: String

        /// 任务来源 ADHOC || WORKFLOW
        public let taskSource: String

        /// 试运行记录id
        public let recordId: UInt64?

        /// 试运行子记录id
        public let sonRecordId: UInt64?

        public init(projectId: String, taskSource: String, recordId: UInt64? = nil, sonRecordId: UInt64? = nil) {
            self.projectId = projectId
            self.taskSource = taskSource
            self.recordId = recordId
            self.sonRecordId = sonRecordId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskSource = "TaskSource"
            case recordId = "RecordId"
            case sonRecordId = "SonRecordId"
        }
    }

    /// DescribeDrInstanceScriptContent返回参数结构体
    public struct DescribeDrInstanceScriptContentResponse: TCResponse {
        /// 结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DrInstanceOpsDto?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询试运行实例执行内容
    @inlinable
    public func describeDrInstanceScriptContent(_ input: DescribeDrInstanceScriptContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrInstanceScriptContentResponse> {
        self.client.execute(action: "DescribeDrInstanceScriptContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询试运行实例执行内容
    @inlinable
    public func describeDrInstanceScriptContent(_ input: DescribeDrInstanceScriptContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrInstanceScriptContentResponse {
        try await self.client.execute(action: "DescribeDrInstanceScriptContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询试运行实例执行内容
    @inlinable
    public func describeDrInstanceScriptContent(projectId: String, taskSource: String, recordId: UInt64? = nil, sonRecordId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrInstanceScriptContentResponse> {
        self.describeDrInstanceScriptContent(.init(projectId: projectId, taskSource: taskSource, recordId: recordId, sonRecordId: sonRecordId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询试运行实例执行内容
    @inlinable
    public func describeDrInstanceScriptContent(projectId: String, taskSource: String, recordId: UInt64? = nil, sonRecordId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrInstanceScriptContentResponse {
        try await self.describeDrInstanceScriptContent(.init(projectId: projectId, taskSource: taskSource, recordId: recordId, sonRecordId: sonRecordId), region: region, logger: logger, on: eventLoop)
    }
}
