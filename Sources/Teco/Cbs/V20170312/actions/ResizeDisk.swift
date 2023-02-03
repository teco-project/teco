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

extension Cbs {
    /// ResizeDisk请求参数结构体
    public struct ResizeDiskRequest: TCRequestModel {
        /// 云硬盘扩容后的大小，单位为GB，必须大于当前云硬盘大小。云盘大小取值范围参见云硬盘[产品分类](/document/product/362/2353)的说明。
        public let diskSize: UInt64

        /// 云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询。
        public let diskId: String

        public init(diskSize: UInt64, diskId: String) {
            self.diskSize = diskSize
            self.diskId = diskId
        }

        enum CodingKeys: String, CodingKey {
            case diskSize = "DiskSize"
            case diskId = "DiskId"
        }
    }

    /// ResizeDisk返回参数结构体
    public struct ResizeDiskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 扩容云硬盘
    ///
    /// 本接口（ResizeDisk）用于扩容云硬盘。
    ///
    /// * 只支持扩容弹性云盘。云硬盘类型可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。非弹性云硬盘需通过[ResizeInstanceDisks](/document/product/213/15731)接口扩容。
    /// * 本接口为异步接口，接口成功返回时，云盘并未立即扩容到指定大小，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态为“EXPANDING”，表示正在扩容中。
    @inlinable @discardableResult
    public func resizeDisk(_ input: ResizeDiskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeDiskResponse> {
        self.client.execute(action: "ResizeDisk", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容云硬盘
    ///
    /// 本接口（ResizeDisk）用于扩容云硬盘。
    ///
    /// * 只支持扩容弹性云盘。云硬盘类型可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。非弹性云硬盘需通过[ResizeInstanceDisks](/document/product/213/15731)接口扩容。
    /// * 本接口为异步接口，接口成功返回时，云盘并未立即扩容到指定大小，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态为“EXPANDING”，表示正在扩容中。
    @inlinable @discardableResult
    public func resizeDisk(_ input: ResizeDiskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeDiskResponse {
        try await self.client.execute(action: "ResizeDisk", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 扩容云硬盘
    ///
    /// 本接口（ResizeDisk）用于扩容云硬盘。
    ///
    /// * 只支持扩容弹性云盘。云硬盘类型可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。非弹性云硬盘需通过[ResizeInstanceDisks](/document/product/213/15731)接口扩容。
    /// * 本接口为异步接口，接口成功返回时，云盘并未立即扩容到指定大小，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态为“EXPANDING”，表示正在扩容中。
    @inlinable @discardableResult
    public func resizeDisk(diskSize: UInt64, diskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeDiskResponse> {
        let input = ResizeDiskRequest(diskSize: diskSize, diskId: diskId)
        return self.client.execute(action: "ResizeDisk", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容云硬盘
    ///
    /// 本接口（ResizeDisk）用于扩容云硬盘。
    ///
    /// * 只支持扩容弹性云盘。云硬盘类型可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。非弹性云硬盘需通过[ResizeInstanceDisks](/document/product/213/15731)接口扩容。
    /// * 本接口为异步接口，接口成功返回时，云盘并未立即扩容到指定大小，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态为“EXPANDING”，表示正在扩容中。
    @inlinable @discardableResult
    public func resizeDisk(diskSize: UInt64, diskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeDiskResponse {
        let input = ResizeDiskRequest(diskSize: diskSize, diskId: diskId)
        return try await self.client.execute(action: "ResizeDisk", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
