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

extension Tke {
    /// DescribeTKEEdgeScript请求参数结构体
    public struct DescribeTKEEdgeScriptRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        /// 网卡名
        public let interface: String

        /// 节点名字
        public let nodeName: String?

        /// json格式的节点配置
        public let config: String?

        /// 可以下载某个历史版本的edgectl脚本，默认下载最新版本，edgectl版本信息可以在脚本里查看
        public let scriptVersion: String?

        public init(clusterId: String, interface: String, nodeName: String? = nil, config: String? = nil, scriptVersion: String? = nil) {
            self.clusterId = clusterId
            self.interface = interface
            self.nodeName = nodeName
            self.config = config
            self.scriptVersion = scriptVersion
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case interface = "Interface"
            case nodeName = "NodeName"
            case config = "Config"
            case scriptVersion = "ScriptVersion"
        }
    }

    /// DescribeTKEEdgeScript返回参数结构体
    public struct DescribeTKEEdgeScriptResponse: TCResponseModel {
        /// 下载链接
        public let link: String

        /// 下载需要的token
        public let token: String

        /// 下载命令
        public let command: String

        /// edgectl脚本版本，默认拉取最新版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scriptVersion: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case link = "Link"
            case token = "Token"
            case command = "Command"
            case scriptVersion = "ScriptVersion"
            case requestId = "RequestId"
        }
    }

    /// 获取边缘脚本链接
    ///
    /// 获取边缘脚本链接，此接口用于添加第三方节点，通过下载脚本从而将节点添加到边缘集群。
    @inlinable
    public func describeTKEEdgeScript(_ input: DescribeTKEEdgeScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeScriptResponse> {
        self.client.execute(action: "DescribeTKEEdgeScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取边缘脚本链接
    ///
    /// 获取边缘脚本链接，此接口用于添加第三方节点，通过下载脚本从而将节点添加到边缘集群。
    @inlinable
    public func describeTKEEdgeScript(_ input: DescribeTKEEdgeScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeScriptResponse {
        try await self.client.execute(action: "DescribeTKEEdgeScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取边缘脚本链接
    ///
    /// 获取边缘脚本链接，此接口用于添加第三方节点，通过下载脚本从而将节点添加到边缘集群。
    @inlinable
    public func describeTKEEdgeScript(clusterId: String, interface: String, nodeName: String? = nil, config: String? = nil, scriptVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeScriptResponse> {
        self.describeTKEEdgeScript(DescribeTKEEdgeScriptRequest(clusterId: clusterId, interface: interface, nodeName: nodeName, config: config, scriptVersion: scriptVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 获取边缘脚本链接
    ///
    /// 获取边缘脚本链接，此接口用于添加第三方节点，通过下载脚本从而将节点添加到边缘集群。
    @inlinable
    public func describeTKEEdgeScript(clusterId: String, interface: String, nodeName: String? = nil, config: String? = nil, scriptVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeScriptResponse {
        try await self.describeTKEEdgeScript(DescribeTKEEdgeScriptRequest(clusterId: clusterId, interface: interface, nodeName: nodeName, config: config, scriptVersion: scriptVersion), region: region, logger: logger, on: eventLoop)
    }
}
