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

extension Tsf {
    /// DescribeDeliveryConfigs请求参数结构体
    public struct DescribeDeliveryConfigsRequest: TCRequestModel {
        /// 关键字
        public let searchWord: String?

        /// 偏移
        public let offset: Int64?

        /// 搜索条数
        public let limit: Int64?

        public init(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeDeliveryConfigs返回参数结构体
    public struct DescribeDeliveryConfigsResponse: TCResponseModel {
        /// 投递项关联部署组信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DeliveryConfigBindGroups?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取多个投递项配置
    ///
    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(_ input: DescribeDeliveryConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliveryConfigsResponse> {
        self.client.execute(action: "DescribeDeliveryConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取多个投递项配置
    ///
    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(_ input: DescribeDeliveryConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliveryConfigsResponse {
        try await self.client.execute(action: "DescribeDeliveryConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取多个投递项配置
    ///
    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliveryConfigsResponse> {
        self.describeDeliveryConfigs(DescribeDeliveryConfigsRequest(searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取多个投递项配置
    ///
    /// 获取多个投递项配置
    @inlinable
    public func describeDeliveryConfigs(searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliveryConfigsResponse {
        try await self.describeDeliveryConfigs(DescribeDeliveryConfigsRequest(searchWord: searchWord, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
