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

extension Cvm {
    /// DescribeImportImageOs请求参数结构体
    public struct DescribeImportImageOsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeImportImageOs返回参数结构体
    public struct DescribeImportImageOsResponse: TCResponseModel {
        /// 支持的导入镜像的操作系统类型。
        public let importImageOsListSupported: ImageOsList

        /// 支持的导入镜像的操作系统版本。
        public let importImageOsVersionSet: [OsVersion]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case importImageOsListSupported = "ImportImageOsListSupported"
            case importImageOsVersionSet = "ImportImageOsVersionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询外部导入镜像支持的OS列表
    ///
    /// 查看可以导入的镜像操作系统信息。
    @inlinable
    public func describeImportImageOs(_ input: DescribeImportImageOsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImportImageOsResponse> {
        self.client.execute(action: "DescribeImportImageOs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询外部导入镜像支持的OS列表
    ///
    /// 查看可以导入的镜像操作系统信息。
    @inlinable
    public func describeImportImageOs(_ input: DescribeImportImageOsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImportImageOsResponse {
        try await self.client.execute(action: "DescribeImportImageOs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询外部导入镜像支持的OS列表
    ///
    /// 查看可以导入的镜像操作系统信息。
    @inlinable
    public func describeImportImageOs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImportImageOsResponse> {
        let input = DescribeImportImageOsRequest()
        return self.client.execute(action: "DescribeImportImageOs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询外部导入镜像支持的OS列表
    ///
    /// 查看可以导入的镜像操作系统信息。
    @inlinable
    public func describeImportImageOs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImportImageOsResponse {
        let input = DescribeImportImageOsRequest()
        return try await self.client.execute(action: "DescribeImportImageOs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
