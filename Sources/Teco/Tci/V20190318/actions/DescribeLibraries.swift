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

extension Tci {
    /// DescribeLibraries请求参数结构体
    public struct DescribeLibrariesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLibraries返回参数结构体
    public struct DescribeLibrariesResponse: TCResponseModel {
        /// 人员库列表
        public let librarySet: [Library]

        /// 人员库总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case librarySet = "LibrarySet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取人员库列表
    @inlinable
    public func describeLibraries(_ input: DescribeLibrariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLibrariesResponse> {
        self.client.execute(action: "DescribeLibraries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取人员库列表
    @inlinable
    public func describeLibraries(_ input: DescribeLibrariesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibrariesResponse {
        try await self.client.execute(action: "DescribeLibraries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取人员库列表
    @inlinable
    public func describeLibraries(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLibrariesResponse> {
        self.describeLibraries(DescribeLibrariesRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取人员库列表
    @inlinable
    public func describeLibraries(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibrariesResponse {
        try await self.describeLibraries(DescribeLibrariesRequest(), region: region, logger: logger, on: eventLoop)
    }
}
