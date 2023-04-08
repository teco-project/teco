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

extension Tcb {
    /// UnfreezeCloudBaseRunServers请求参数结构体
    public struct UnfreezeCloudBaseRunServersRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 服务名称列表
        public let serverNameList: [String]

        public init(envId: String, serverNameList: [String]) {
            self.envId = envId
            self.serverNameList = serverNameList
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverNameList = "ServerNameList"
        }
    }

    /// UnfreezeCloudBaseRunServers返回参数结构体
    public struct UnfreezeCloudBaseRunServersResponse: TCResponseModel {
        /// 批量执行结果
        /// 成功：succ
        /// 失败：fail
        /// 部分：partial（部分成功、部分失败）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 解冻失败列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failServerList: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case failServerList = "FailServerList"
            case requestId = "RequestId"
        }
    }

    /// 批量解冻服务
    @inlinable
    public func unfreezeCloudBaseRunServers(_ input: UnfreezeCloudBaseRunServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnfreezeCloudBaseRunServersResponse> {
        self.client.execute(action: "UnfreezeCloudBaseRunServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量解冻服务
    @inlinable
    public func unfreezeCloudBaseRunServers(_ input: UnfreezeCloudBaseRunServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnfreezeCloudBaseRunServersResponse {
        try await self.client.execute(action: "UnfreezeCloudBaseRunServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量解冻服务
    @inlinable
    public func unfreezeCloudBaseRunServers(envId: String, serverNameList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnfreezeCloudBaseRunServersResponse> {
        self.unfreezeCloudBaseRunServers(.init(envId: envId, serverNameList: serverNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量解冻服务
    @inlinable
    public func unfreezeCloudBaseRunServers(envId: String, serverNameList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnfreezeCloudBaseRunServersResponse {
        try await self.unfreezeCloudBaseRunServers(.init(envId: envId, serverNameList: serverNameList), region: region, logger: logger, on: eventLoop)
    }
}
