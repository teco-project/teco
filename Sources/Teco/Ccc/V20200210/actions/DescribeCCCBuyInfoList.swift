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

extension Ccc {
    /// DescribeCCCBuyInfoList请求参数结构体
    public struct DescribeCCCBuyInfoListRequest: TCRequestModel {
        /// 应用ID列表，不传时查询所有应用
        public let sdkAppIds: [Int64]?

        public init(sdkAppIds: [Int64]? = nil) {
            self.sdkAppIds = sdkAppIds
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppIds = "SdkAppIds"
        }
    }

    /// DescribeCCCBuyInfoList返回参数结构体
    public struct DescribeCCCBuyInfoListResponse: TCResponseModel {
        /// 应用总数
        public let totalCount: Int64

        /// 应用购买信息列表
        public let sdkAppIdBuyList: [SdkAppIdBuyInfo]

        /// 套餐包购买信息列表
        public let packageBuyList: [PackageBuyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case sdkAppIdBuyList = "SdkAppIdBuyList"
            case packageBuyList = "PackageBuyList"
            case requestId = "RequestId"
        }
    }

    /// 获取用户购买信息列表
    @inlinable
    public func describeCCCBuyInfoList(_ input: DescribeCCCBuyInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCCBuyInfoListResponse> {
        self.client.execute(action: "DescribeCCCBuyInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户购买信息列表
    @inlinable
    public func describeCCCBuyInfoList(_ input: DescribeCCCBuyInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCCBuyInfoListResponse {
        try await self.client.execute(action: "DescribeCCCBuyInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户购买信息列表
    @inlinable
    public func describeCCCBuyInfoList(sdkAppIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCCBuyInfoListResponse> {
        self.describeCCCBuyInfoList(.init(sdkAppIds: sdkAppIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户购买信息列表
    @inlinable
    public func describeCCCBuyInfoList(sdkAppIds: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCCBuyInfoListResponse {
        try await self.describeCCCBuyInfoList(.init(sdkAppIds: sdkAppIds), region: region, logger: logger, on: eventLoop)
    }
}
