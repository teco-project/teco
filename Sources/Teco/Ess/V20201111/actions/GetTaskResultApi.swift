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

extension Ess {
    /// GetTaskResultApi请求参数结构体
    public struct GetTaskResultApiRequest: TCRequestModel {
        /// 任务Id，通过CreateConvertTaskApi得到
        public let taskId: String

        /// 操作人信息
        public let `operator`: UserInfo?

        /// 应用号信息
        public let agent: Agent?

        /// 暂未开放
        public let organization: OrganizationInfo?

        public init(taskId: String, operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil) {
            self.taskId = taskId
            self.`operator` = `operator`
            self.agent = agent
            self.organization = organization
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case `operator` = "Operator"
            case agent = "Agent"
            case organization = "Organization"
        }
    }

    /// GetTaskResultApi返回参数结构体
    public struct GetTaskResultApiResponse: TCResponseModel {
        /// 任务Id
        public let taskId: String

        /// 任务状态，需要关注的状态
        /// 0  :NeedTranform   - 任务已提交
        /// 4  :Processing     - 文档转换中
        /// 8  :TaskEnd        - 任务处理完成
        /// -2 :DownloadFailed - 下载失败
        /// -6 :ProcessFailed  - 转换失败
        /// -13:ProcessTimeout - 转换文件超时
        public let taskStatus: Int64

        /// 状态描述，需要关注的状态
        /// NeedTranform   - 任务已提交
        /// Processing     - 文档转换中
        /// TaskEnd        - 任务处理完成
        /// DownloadFailed - 下载失败
        /// ProcessFailed  - 转换失败
        /// ProcessTimeout - 转换文件超时
        public let taskMessage: String

        /// 资源Id，也是FileId，用于文件发起使用
        public let resourceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case taskStatus = "TaskStatus"
            case taskMessage = "TaskMessage"
            case resourceId = "ResourceId"
            case requestId = "RequestId"
        }
    }

    /// 查询转换任务状态
    @inlinable
    public func getTaskResultApi(_ input: GetTaskResultApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTaskResultApiResponse> {
        self.client.execute(action: "GetTaskResultApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询转换任务状态
    @inlinable
    public func getTaskResultApi(_ input: GetTaskResultApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTaskResultApiResponse {
        try await self.client.execute(action: "GetTaskResultApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询转换任务状态
    @inlinable
    public func getTaskResultApi(taskId: String, operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTaskResultApiResponse> {
        self.getTaskResultApi(GetTaskResultApiRequest(taskId: taskId, operator: `operator`, agent: agent, organization: organization), region: region, logger: logger, on: eventLoop)
    }

    /// 查询转换任务状态
    @inlinable
    public func getTaskResultApi(taskId: String, operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTaskResultApiResponse {
        try await self.getTaskResultApi(GetTaskResultApiRequest(taskId: taskId, operator: `operator`, agent: agent, organization: organization), region: region, logger: logger, on: eventLoop)
    }
}
