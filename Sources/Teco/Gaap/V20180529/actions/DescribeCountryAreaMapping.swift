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

extension Gaap {
    /// DescribeCountryAreaMapping请求参数结构体
    public struct DescribeCountryAreaMappingRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeCountryAreaMapping返回参数结构体
    public struct DescribeCountryAreaMappingResponse: TCResponseModel {
        /// 国家地区编码映射表。
        public let countryAreaMappingList: [CountryAreaMap]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case countryAreaMappingList = "CountryAreaMappingList"
            case requestId = "RequestId"
        }
    }

    /// 获取国家地区编码映射表
    ///
    /// 本接口（DescribeCountryAreaMapping）用于获取国家地区编码映射表。
    @inlinable
    public func describeCountryAreaMapping(_ input: DescribeCountryAreaMappingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCountryAreaMappingResponse> {
        self.client.execute(action: "DescribeCountryAreaMapping", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取国家地区编码映射表
    ///
    /// 本接口（DescribeCountryAreaMapping）用于获取国家地区编码映射表。
    @inlinable
    public func describeCountryAreaMapping(_ input: DescribeCountryAreaMappingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCountryAreaMappingResponse {
        try await self.client.execute(action: "DescribeCountryAreaMapping", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取国家地区编码映射表
    ///
    /// 本接口（DescribeCountryAreaMapping）用于获取国家地区编码映射表。
    @inlinable
    public func describeCountryAreaMapping(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCountryAreaMappingResponse> {
        self.describeCountryAreaMapping(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取国家地区编码映射表
    ///
    /// 本接口（DescribeCountryAreaMapping）用于获取国家地区编码映射表。
    @inlinable
    public func describeCountryAreaMapping(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCountryAreaMappingResponse {
        try await self.describeCountryAreaMapping(.init(), region: region, logger: logger, on: eventLoop)
    }
}
