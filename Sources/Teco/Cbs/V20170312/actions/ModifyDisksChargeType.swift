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

extension Cbs {
    /// ModifyDisksChargeType请求参数结构体
    public struct ModifyDisksChargeTypeRequest: TCRequest {
        /// 一个或多个待操作的云硬盘ID。每次请求批量云硬盘上限为100。
        public let diskIds: [String]

        /// 设置为预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
        public let diskChargePrepaid: DiskChargePrepaid?

        /// 设置为后付费模式
        public let diskChargePostpaid: Bool?

        public init(diskIds: [String], diskChargePrepaid: DiskChargePrepaid? = nil, diskChargePostpaid: Bool? = nil) {
            self.diskIds = diskIds
            self.diskChargePrepaid = diskChargePrepaid
            self.diskChargePostpaid = diskChargePostpaid
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case diskChargePrepaid = "DiskChargePrepaid"
            case diskChargePostpaid = "DiskChargePostpaid"
        }
    }

    /// ModifyDisksChargeType返回参数结构体
    public struct ModifyDisksChargeTypeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改弹性云硬盘计费模式
    ///
    /// 本接口 (ModifyDisksChargeType) 用于切换云硬盘的计费模式。
    ///
    /// 非弹性云硬盘不支持此接口，请通过修改实例计费模式接口将实例连同非弹性云硬盘一起转换。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable @discardableResult
    public func modifyDisksChargeType(_ input: ModifyDisksChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDisksChargeTypeResponse> {
        self.client.execute(action: "ModifyDisksChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性云硬盘计费模式
    ///
    /// 本接口 (ModifyDisksChargeType) 用于切换云硬盘的计费模式。
    ///
    /// 非弹性云硬盘不支持此接口，请通过修改实例计费模式接口将实例连同非弹性云硬盘一起转换。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable @discardableResult
    public func modifyDisksChargeType(_ input: ModifyDisksChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDisksChargeTypeResponse {
        try await self.client.execute(action: "ModifyDisksChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性云硬盘计费模式
    ///
    /// 本接口 (ModifyDisksChargeType) 用于切换云硬盘的计费模式。
    ///
    /// 非弹性云硬盘不支持此接口，请通过修改实例计费模式接口将实例连同非弹性云硬盘一起转换。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable @discardableResult
    public func modifyDisksChargeType(diskIds: [String], diskChargePrepaid: DiskChargePrepaid? = nil, diskChargePostpaid: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDisksChargeTypeResponse> {
        self.modifyDisksChargeType(.init(diskIds: diskIds, diskChargePrepaid: diskChargePrepaid, diskChargePostpaid: diskChargePostpaid), region: region, logger: logger, on: eventLoop)
    }

    /// 修改弹性云硬盘计费模式
    ///
    /// 本接口 (ModifyDisksChargeType) 用于切换云硬盘的计费模式。
    ///
    /// 非弹性云硬盘不支持此接口，请通过修改实例计费模式接口将实例连同非弹性云硬盘一起转换。
    /// 默认接口请求频率限制：10次/秒。
    @inlinable @discardableResult
    public func modifyDisksChargeType(diskIds: [String], diskChargePrepaid: DiskChargePrepaid? = nil, diskChargePostpaid: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDisksChargeTypeResponse {
        try await self.modifyDisksChargeType(.init(diskIds: diskIds, diskChargePrepaid: diskChargePrepaid, diskChargePostpaid: diskChargePostpaid), region: region, logger: logger, on: eventLoop)
    }
}
