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

extension Wedata {
    /// BatchModifyOwnersNew请求参数结构体
    public struct BatchModifyOwnersNewRequest: TCRequestModel {
        /// 需要更新责任人的TaskId数组
        public let taskIdList: [String]

        /// 需要更新的责任人
        public let owners: String

        /// 项目Id
        public let projectId: String

        public init(taskIdList: [String], owners: String, projectId: String) {
            self.taskIdList = taskIdList
            self.owners = owners
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskIdList = "TaskIdList"
            case owners = "Owners"
            case projectId = "ProjectId"
        }
    }

    /// BatchModifyOwnersNew返回参数结构体
    public struct BatchModifyOwnersNewResponse: TCResponseModel {
        /// 返回批量操作成功个数、失败个数、操作总数
        public let data: BatchOperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 批量修改任务责任人【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量修改任务责任人
    @inlinable
    public func batchModifyOwnersNew(_ input: BatchModifyOwnersNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyOwnersNewResponse> {
        self.client.execute(action: "BatchModifyOwnersNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改任务责任人【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量修改任务责任人
    @inlinable
    public func batchModifyOwnersNew(_ input: BatchModifyOwnersNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyOwnersNewResponse {
        try await self.client.execute(action: "BatchModifyOwnersNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改任务责任人【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量修改任务责任人
    @inlinable
    public func batchModifyOwnersNew(taskIdList: [String], owners: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchModifyOwnersNewResponse> {
        self.batchModifyOwnersNew(.init(taskIdList: taskIdList, owners: owners, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量修改任务责任人【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量修改任务责任人
    @inlinable
    public func batchModifyOwnersNew(taskIdList: [String], owners: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyOwnersNewResponse {
        try await self.batchModifyOwnersNew(.init(taskIdList: taskIdList, owners: owners, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
