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

extension Dlc {
    /// SwitchDataEngine请求参数结构体
    public struct SwitchDataEngineRequest: TCRequestModel {
        /// 主集群名称
        public let dataEngineName: String

        /// 是否开启备集群
        public let startStandbyCluster: Bool

        public init(dataEngineName: String, startStandbyCluster: Bool) {
            self.dataEngineName = dataEngineName
            self.startStandbyCluster = startStandbyCluster
        }

        enum CodingKeys: String, CodingKey {
            case dataEngineName = "DataEngineName"
            case startStandbyCluster = "StartStandbyCluster"
        }
    }

    /// SwitchDataEngine返回参数结构体
    public struct SwitchDataEngineResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 切换主备集群
    @inlinable @discardableResult
    public func switchDataEngine(_ input: SwitchDataEngineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchDataEngineResponse> {
        self.client.execute(action: "SwitchDataEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 切换主备集群
    @inlinable @discardableResult
    public func switchDataEngine(_ input: SwitchDataEngineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchDataEngineResponse {
        try await self.client.execute(action: "SwitchDataEngine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 切换主备集群
    @inlinable @discardableResult
    public func switchDataEngine(dataEngineName: String, startStandbyCluster: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwitchDataEngineResponse> {
        self.switchDataEngine(.init(dataEngineName: dataEngineName, startStandbyCluster: startStandbyCluster), region: region, logger: logger, on: eventLoop)
    }

    /// 切换主备集群
    @inlinable @discardableResult
    public func switchDataEngine(dataEngineName: String, startStandbyCluster: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchDataEngineResponse {
        try await self.switchDataEngine(.init(dataEngineName: dataEngineName, startStandbyCluster: startStandbyCluster), region: region, logger: logger, on: eventLoop)
    }
}
