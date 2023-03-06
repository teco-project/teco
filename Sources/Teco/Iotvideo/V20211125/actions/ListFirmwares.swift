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

extension Iotvideo {
    /// ListFirmwares请求参数结构体
    public struct ListFirmwaresRequest: TCPaginatedRequest {
        /// 获取的页数
        public let pageNum: UInt64

        /// 分页的大小
        public let pageSize: UInt64

        /// 产品ID
        public let productID: String?

        /// 搜索过滤条件
        public let filters: [SearchKeyword]?

        public init(pageNum: UInt64, pageSize: UInt64, productID: String? = nil, filters: [SearchKeyword]? = nil) {
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.productID = productID
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case productID = "ProductID"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListFirmwaresResponse) -> ListFirmwaresRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListFirmwaresRequest(pageNum: self.pageNum + 1, pageSize: self.pageSize, productID: self.productID, filters: self.filters)
        }
    }

    /// ListFirmwares返回参数结构体
    public struct ListFirmwaresResponse: TCPaginatedResponse {
        /// 固件总数
        public let totalCount: UInt64

        /// 固件列表
        public let firmwares: [FirmwareInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case firmwares = "Firmwares"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [FirmwareInfo] {
            self.firmwares
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取固件列表
    ///
    /// 本接口（ListFirmwares）用于获取固件列表
    @inlinable
    public func listFirmwares(_ input: ListFirmwaresRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirmwaresResponse> {
        self.client.execute(action: "ListFirmwares", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取固件列表
    ///
    /// 本接口（ListFirmwares）用于获取固件列表
    @inlinable
    public func listFirmwares(_ input: ListFirmwaresRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirmwaresResponse {
        try await self.client.execute(action: "ListFirmwares", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取固件列表
    ///
    /// 本接口（ListFirmwares）用于获取固件列表
    @inlinable
    public func listFirmwares(pageNum: UInt64, pageSize: UInt64, productID: String? = nil, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirmwaresResponse> {
        let input = ListFirmwaresRequest(pageNum: pageNum, pageSize: pageSize, productID: productID, filters: filters)
        return self.client.execute(action: "ListFirmwares", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取固件列表
    ///
    /// 本接口（ListFirmwares）用于获取固件列表
    @inlinable
    public func listFirmwares(pageNum: UInt64, pageSize: UInt64, productID: String? = nil, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirmwaresResponse {
        let input = ListFirmwaresRequest(pageNum: pageNum, pageSize: pageSize, productID: productID, filters: filters)
        return try await self.client.execute(action: "ListFirmwares", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
