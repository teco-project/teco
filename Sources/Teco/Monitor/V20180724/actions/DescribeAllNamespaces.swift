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

extension Monitor {
    /// DescribeAllNamespaces请求参数结构体
    public struct DescribeAllNamespacesRequest: TCRequestModel {
        /// 根据使用场景过滤 目前仅有"ST_ALARM"=告警类型
        public let sceneType: String

        /// 固定值，为"monitor"
        public let module: String

        /// 根据监控类型过滤 不填默认查所有类型 "MT_QCE"=云产品监控
        public let monitorTypes: [String]?

        /// 根据namespace的Id过滤 不填默认查询所有
        public let ids: [String]?

        public init(sceneType: String, module: String, monitorTypes: [String]? = nil, ids: [String]? = nil) {
            self.sceneType = sceneType
            self.module = module
            self.monitorTypes = monitorTypes
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case sceneType = "SceneType"
            case module = "Module"
            case monitorTypes = "MonitorTypes"
            case ids = "Ids"
        }
    }

    /// DescribeAllNamespaces返回参数结构体
    public struct DescribeAllNamespacesResponse: TCResponseModel {
        /// 云产品的告警策略类型，已废弃
        public let qceNamespaces: CommonNamespace

        /// 其他告警策略类型，已废弃
        public let customNamespaces: CommonNamespace

        /// 云产品的告警策略类型
        public let qceNamespacesNew: [CommonNamespace]

        /// 其他告警策略类型，暂不支持
        public let customNamespacesNew: [CommonNamespace]

        /// 通用告警策略类型(包括：应用性能监控，前端性能监控，云拨测)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let commonNamespaces: [CommonNamespaceNew]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case qceNamespaces = "QceNamespaces"
            case customNamespaces = "CustomNamespaces"
            case qceNamespacesNew = "QceNamespacesNew"
            case customNamespacesNew = "CustomNamespacesNew"
            case commonNamespaces = "CommonNamespaces"
            case requestId = "RequestId"
        }
    }

    /// 查询所有名字空间
    @inlinable
    public func describeAllNamespaces(_ input: DescribeAllNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllNamespacesResponse> {
        self.client.execute(action: "DescribeAllNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有名字空间
    @inlinable
    public func describeAllNamespaces(_ input: DescribeAllNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllNamespacesResponse {
        try await self.client.execute(action: "DescribeAllNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有名字空间
    @inlinable
    public func describeAllNamespaces(sceneType: String, module: String, monitorTypes: [String]? = nil, ids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllNamespacesResponse> {
        let input = DescribeAllNamespacesRequest(sceneType: sceneType, module: module, monitorTypes: monitorTypes, ids: ids)
        return self.client.execute(action: "DescribeAllNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有名字空间
    @inlinable
    public func describeAllNamespaces(sceneType: String, module: String, monitorTypes: [String]? = nil, ids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllNamespacesResponse {
        let input = DescribeAllNamespacesRequest(sceneType: sceneType, module: module, monitorTypes: monitorTypes, ids: ids)
        return try await self.client.execute(action: "DescribeAllNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
