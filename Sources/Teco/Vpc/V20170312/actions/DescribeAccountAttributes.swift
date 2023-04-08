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

extension Vpc {
    /// DescribeAccountAttributes请求参数结构体
    public struct DescribeAccountAttributesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAccountAttributes返回参数结构体
    public struct DescribeAccountAttributesResponse: TCResponseModel {
        /// 用户账号属性对象。
        public let accountAttributeSet: [AccountAttribute]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accountAttributeSet = "AccountAttributeSet"
            case requestId = "RequestId"
        }
    }

    /// 查询账户属性
    ///
    /// 本接口（DescribeAccountAttributes）用于查询用户账号私有属性。
    @inlinable
    public func describeAccountAttributes(_ input: DescribeAccountAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAttributesResponse> {
        self.client.execute(action: "DescribeAccountAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账户属性
    ///
    /// 本接口（DescribeAccountAttributes）用于查询用户账号私有属性。
    @inlinable
    public func describeAccountAttributes(_ input: DescribeAccountAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountAttributesResponse {
        try await self.client.execute(action: "DescribeAccountAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账户属性
    ///
    /// 本接口（DescribeAccountAttributes）用于查询用户账号私有属性。
    @inlinable
    public func describeAccountAttributes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAttributesResponse> {
        self.describeAccountAttributes(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账户属性
    ///
    /// 本接口（DescribeAccountAttributes）用于查询用户账号私有属性。
    @inlinable
    public func describeAccountAttributes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountAttributesResponse {
        try await self.describeAccountAttributes(.init(), region: region, logger: logger, on: eventLoop)
    }
}
