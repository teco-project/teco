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

extension Iotcloud {
    /// ListFirmwares请求参数结构体
    public struct ListFirmwaresRequest: TCRequestModel {
        /// 获取的页数
        public let pageNum: UInt64

        /// 分页的大小
        public let pageSize: UInt64

        /// 产品ID
        public let productId: String?

        /// 搜索过滤条件
        public let filters: [SearchKeyword]?

        public init(pageNum: UInt64, pageSize: UInt64, productId: String? = nil, filters: [SearchKeyword]? = nil) {
            self.pageNum = pageNum
            self.pageSize = pageSize
            self.productId = productId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pageNum = "PageNum"
            case pageSize = "PageSize"
            case productId = "ProductId"
            case filters = "Filters"
        }
    }

    /// ListFirmwares返回参数结构体
    public struct ListFirmwaresResponse: TCResponseModel {
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
    public func listFirmwares(pageNum: UInt64, pageSize: UInt64, productId: String? = nil, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirmwaresResponse> {
        self.listFirmwares(ListFirmwaresRequest(pageNum: pageNum, pageSize: pageSize, productId: productId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取固件列表
    ///
    /// 本接口（ListFirmwares）用于获取固件列表
    @inlinable
    public func listFirmwares(pageNum: UInt64, pageSize: UInt64, productId: String? = nil, filters: [SearchKeyword]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirmwaresResponse {
        try await self.listFirmwares(ListFirmwaresRequest(pageNum: pageNum, pageSize: pageSize, productId: productId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
