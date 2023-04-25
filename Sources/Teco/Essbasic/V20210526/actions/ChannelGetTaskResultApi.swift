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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// ChannelGetTaskResultApi请求参数结构体
    public struct ChannelGetTaskResultApiRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 任务Id，通过ChannelCreateConvertTaskApi接口获得
        public let taskId: String

        /// 操作者的信息，不用传
        public let `operator`: UserInfo?

        /// 暂未开放
        public let organization: OrganizationInfo?

        public init(agent: Agent, taskId: String, operator: UserInfo? = nil, organization: OrganizationInfo? = nil) {
            self.agent = agent
            self.taskId = taskId
            self.operator = `operator`
            self.organization = organization
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case taskId = "TaskId"
            case `operator` = "Operator"
            case organization = "Organization"
        }
    }

    /// ChannelGetTaskResultApi返回参数结构体
    public struct ChannelGetTaskResultApiResponse: TCResponseModel {
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

        /// 预览文件Url，有效期30分钟
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let previewUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case taskStatus = "TaskStatus"
            case taskMessage = "TaskMessage"
            case resourceId = "ResourceId"
            case previewUrl = "PreviewUrl"
            case requestId = "RequestId"
        }
    }

    /// 查询转换任务状态
    @inlinable
    public func channelGetTaskResultApi(_ input: ChannelGetTaskResultApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelGetTaskResultApiResponse> {
        self.client.execute(action: "ChannelGetTaskResultApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询转换任务状态
    @inlinable
    public func channelGetTaskResultApi(_ input: ChannelGetTaskResultApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelGetTaskResultApiResponse {
        try await self.client.execute(action: "ChannelGetTaskResultApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询转换任务状态
    @inlinable
    public func channelGetTaskResultApi(agent: Agent, taskId: String, operator: UserInfo? = nil, organization: OrganizationInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelGetTaskResultApiResponse> {
        self.channelGetTaskResultApi(.init(agent: agent, taskId: taskId, operator: `operator`, organization: organization), region: region, logger: logger, on: eventLoop)
    }

    /// 查询转换任务状态
    @inlinable
    public func channelGetTaskResultApi(agent: Agent, taskId: String, operator: UserInfo? = nil, organization: OrganizationInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelGetTaskResultApiResponse {
        try await self.channelGetTaskResultApi(.init(agent: agent, taskId: taskId, operator: `operator`, organization: organization), region: region, logger: logger, on: eventLoop)
    }
}
