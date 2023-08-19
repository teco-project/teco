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

import Logging
import NIOCore
import TecoCore

extension Lighthouse {
    /// RenewDisks请求参数结构体
    public struct RenewDisksRequest: TCRequest {
        /// 云硬盘ID列表。一个或多个待操作的云硬盘ID。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。每次请求续费数据盘数量总计上限为50。
        public let diskIds: [String]

        /// 续费云硬盘包年包月相关参数设置。
        public let renewDiskChargePrepaid: RenewDiskChargePrepaid

        /// 是否自动使用代金券。默认不使用。
        public let autoVoucher: Bool?

        public init(diskIds: [String], renewDiskChargePrepaid: RenewDiskChargePrepaid, autoVoucher: Bool? = nil) {
            self.diskIds = diskIds
            self.renewDiskChargePrepaid = renewDiskChargePrepaid
            self.autoVoucher = autoVoucher
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case renewDiskChargePrepaid = "RenewDiskChargePrepaid"
            case autoVoucher = "AutoVoucher"
        }
    }

    /// RenewDisks返回参数结构体
    public struct RenewDisksResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 续费云硬盘
    ///
    /// 本接口(RenewDisks)用于续费一个或多个轻量应用服务器云硬盘。
    ///
    /// 只有状态为 ATTACHED，UNATTACHED 或 SHUTDOWN 的数据盘才可以进行此操作。
    /// 支持批量操作。每次请求批量云硬盘的上限为 50。
    /// 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。云硬盘操作结果可以通过调用 [DescribeDisks](https://cloud.tencent.com/document/product/1207/66093) 接口查询，如果云硬盘的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewDisks(_ input: RenewDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewDisksResponse> {
        self.client.execute(action: "RenewDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费云硬盘
    ///
    /// 本接口(RenewDisks)用于续费一个或多个轻量应用服务器云硬盘。
    ///
    /// 只有状态为 ATTACHED，UNATTACHED 或 SHUTDOWN 的数据盘才可以进行此操作。
    /// 支持批量操作。每次请求批量云硬盘的上限为 50。
    /// 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。云硬盘操作结果可以通过调用 [DescribeDisks](https://cloud.tencent.com/document/product/1207/66093) 接口查询，如果云硬盘的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewDisks(_ input: RenewDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewDisksResponse {
        try await self.client.execute(action: "RenewDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费云硬盘
    ///
    /// 本接口(RenewDisks)用于续费一个或多个轻量应用服务器云硬盘。
    ///
    /// 只有状态为 ATTACHED，UNATTACHED 或 SHUTDOWN 的数据盘才可以进行此操作。
    /// 支持批量操作。每次请求批量云硬盘的上限为 50。
    /// 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。云硬盘操作结果可以通过调用 [DescribeDisks](https://cloud.tencent.com/document/product/1207/66093) 接口查询，如果云硬盘的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewDisks(diskIds: [String], renewDiskChargePrepaid: RenewDiskChargePrepaid, autoVoucher: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewDisksResponse> {
        self.renewDisks(.init(diskIds: diskIds, renewDiskChargePrepaid: renewDiskChargePrepaid, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }

    /// 续费云硬盘
    ///
    /// 本接口(RenewDisks)用于续费一个或多个轻量应用服务器云硬盘。
    ///
    /// 只有状态为 ATTACHED，UNATTACHED 或 SHUTDOWN 的数据盘才可以进行此操作。
    /// 支持批量操作。每次请求批量云硬盘的上限为 50。
    /// 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。云硬盘操作结果可以通过调用 [DescribeDisks](https://cloud.tencent.com/document/product/1207/66093) 接口查询，如果云硬盘的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewDisks(diskIds: [String], renewDiskChargePrepaid: RenewDiskChargePrepaid, autoVoucher: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewDisksResponse {
        try await self.renewDisks(.init(diskIds: diskIds, renewDiskChargePrepaid: renewDiskChargePrepaid, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }
}
