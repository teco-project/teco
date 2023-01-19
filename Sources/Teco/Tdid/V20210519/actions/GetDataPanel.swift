//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tdid {
    /// GetDataPanel请求参数结构体
    public struct GetDataPanelRequest: TCRequestModel {
        /// 网络ID
        public let clusterId: String?

        public init(clusterId: String? = nil) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// GetDataPanel返回参数结构体
    public struct GetDataPanelResponse: TCResponseModel {
        /// 区块链网络数量
        public let blockNetworkCount: Int64

        /// 区块链网络名称
        public let blockNetworkName: String

        /// 当前区块高度
        public let blockHeight: Int64

        /// 区块链网络类型
        public let blockNetworkType: Int64

        /// did数量
        public let didCount: Int64

        /// 凭证模版数量
        public let cptCount: Int64

        /// 已认证权威机构数量
        public let certificatedAuthCount: Int64

        /// 颁发凭证数量
        public let issueCptCount: Int64

        /// 本周新增DID数量
        public let newDidCount: Int64

        /// BCOS网络类型数量
        public let bcosCount: Int64

        /// Fabric网络类型数量
        public let fabricCount: Int64

        /// 长安链网络类型数量
        public let chainMakerCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case blockNetworkCount = "BlockNetworkCount"
            case blockNetworkName = "BlockNetworkName"
            case blockHeight = "BlockHeight"
            case blockNetworkType = "BlockNetworkType"
            case didCount = "DidCount"
            case cptCount = "CptCount"
            case certificatedAuthCount = "CertificatedAuthCount"
            case issueCptCount = "IssueCptCount"
            case newDidCount = "NewDidCount"
            case bcosCount = "BcosCount"
            case fabricCount = "FabricCount"
            case chainMakerCount = "ChainMakerCount"
            case requestId = "RequestId"
        }
    }

    /// 概览
    @inlinable
    public func getDataPanel(_ input: GetDataPanelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataPanelResponse> {
        self.client.execute(action: "GetDataPanel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 概览
    @inlinable
    public func getDataPanel(_ input: GetDataPanelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataPanelResponse {
        try await self.client.execute(action: "GetDataPanel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 概览
    @inlinable
    public func getDataPanel(clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataPanelResponse> {
        self.getDataPanel(GetDataPanelRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 概览
    @inlinable
    public func getDataPanel(clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataPanelResponse {
        try await self.getDataPanel(GetDataPanelRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
