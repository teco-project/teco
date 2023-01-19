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

extension Dayu {
    /// DescribeInsurePacks请求参数结构体
    public struct DescribeInsurePacksRequest: TCRequestModel {
        /// 可选字段，保险包套餐ID，当要获取指定ID（例如insure-000000xe）的保险包套餐时请填写此字段；
        public let idList: [String]?

        public init(idList: [String]? = nil) {
            self.idList = idList
        }

        enum CodingKeys: String, CodingKey {
            case idList = "IdList"
        }
    }

    /// DescribeInsurePacks返回参数结构体
    public struct DescribeInsurePacksResponse: TCResponseModel {
        /// 保险包套餐列表
        public let insurePacks: [KeyValueRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case insurePacks = "InsurePacks"
            case requestId = "RequestId"
        }
    }

    /// 获取保险包套餐列表
    @inlinable
    public func describeInsurePacks(_ input: DescribeInsurePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInsurePacksResponse> {
        self.client.execute(action: "DescribeInsurePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取保险包套餐列表
    @inlinable
    public func describeInsurePacks(_ input: DescribeInsurePacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInsurePacksResponse {
        try await self.client.execute(action: "DescribeInsurePacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取保险包套餐列表
    @inlinable
    public func describeInsurePacks(idList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInsurePacksResponse> {
        self.describeInsurePacks(DescribeInsurePacksRequest(idList: idList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取保险包套餐列表
    @inlinable
    public func describeInsurePacks(idList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInsurePacksResponse {
        try await self.describeInsurePacks(DescribeInsurePacksRequest(idList: idList), region: region, logger: logger, on: eventLoop)
    }
}
