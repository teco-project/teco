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

import TecoPaginationHelpers

extension Ame {
    /// DescribePackages请求参数结构体
    public struct DescribePackagesRequest: TCPaginatedRequest {
        /// 默认0，Offset=Offset+Length
        public let offset: UInt64?

        /// 默认20
        public let length: UInt64?

        public init(offset: UInt64? = nil, length: UInt64? = nil) {
            self.offset = offset
            self.length = length
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case length = "Length"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePackagesResponse) -> DescribePackagesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePackagesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), length: self.length)
        }
    }

    /// DescribePackages返回参数结构体
    public struct DescribePackagesResponse: TCPaginatedResponse {
        /// 已购曲库包列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packages: [Package]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case packages = "Packages"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Package] {
            self.packages ?? []
        }
    }

    /// 获取已购曲库包列表
    ///
    /// 获取已购曲库包列表接口
    @inlinable
    public func describePackages(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagesResponse> {
        self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取已购曲库包列表
    ///
    /// 获取已购曲库包列表接口
    @inlinable
    public func describePackages(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        try await self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取已购曲库包列表
    ///
    /// 获取已购曲库包列表接口
    @inlinable
    public func describePackages(offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagesResponse> {
        let input = DescribePackagesRequest(offset: offset, length: length)
        return self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取已购曲库包列表
    ///
    /// 获取已购曲库包列表接口
    @inlinable
    public func describePackages(offset: UInt64? = nil, length: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        let input = DescribePackagesRequest(offset: offset, length: length)
        return try await self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取已购曲库包列表
    ///
    /// 获取已购曲库包列表接口
    @inlinable
    public func describePackagesPaginated(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [Package])> {
        self.client.paginate(input: input, region: region, command: self.describePackages, logger: logger, on: eventLoop)
    }

    /// 获取已购曲库包列表
    ///
    /// 获取已购曲库包列表接口
    @inlinable @discardableResult
    public func describePackagesPaginated(_ input: DescribePackagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePackagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePackages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取已购曲库包列表
    ///
    /// 获取已购曲库包列表接口
    @inlinable
    public func describePackagesPaginator(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePackagesRequest, DescribePackagesResponse>.ResultSequence, responses: TCClient.Paginator<DescribePackagesRequest, DescribePackagesResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePackages, logger: logger, on: eventLoop)
    }
}
