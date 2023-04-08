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

extension Vod {
    /// RestoreMedia请求参数结构体
    public struct RestoreMediaRequest: TCRequestModel {
        /// 媒体文件唯一标识列表。
        public let fileIds: [String]

        /// 解冻出的临时媒体文件的可访问持续时长，单位为“天”。
        public let restoreDay: UInt64?

        /// 解冻模式。当媒体文件当前的存储类型为归档存储时，有以下取值：
        /// <li>极速模式：Expedited，解冻任务在5分钟后完成。</li>
        /// <li>标准模式：Standard，解冻任务在5小时后完成 。</li>
        /// <li>批量模式：Bulk，，解冻任务在12小时后完成。</li>
        /// 当媒体文件的存储类型为深度归档存储时，有以下取值：
        /// <li>标准模式：Standard，解冻任务在24小时后完成。</li>
        /// <li>批量模式：Bulk，解冻任务在48小时后完成。</li>
        public let restoreTier: String?

        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(fileIds: [String], restoreDay: UInt64? = nil, restoreTier: String? = nil, subAppId: UInt64? = nil) {
            self.fileIds = fileIds
            self.restoreDay = restoreDay
            self.restoreTier = restoreTier
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case fileIds = "FileIds"
            case restoreDay = "RestoreDay"
            case restoreTier = "RestoreTier"
            case subAppId = "SubAppId"
        }
    }

    /// RestoreMedia返回参数结构体
    public struct RestoreMediaResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解冻媒体文件
    ///
    /// 当媒体文件的存储类型是归档存储或深度归档存储时，是不可访问的。如需访问，则需要调用本接口进行解冻，解冻后可访问的媒体文件是临时的，在有效期过后，则不可访问。
    @inlinable @discardableResult
    public func restoreMedia(_ input: RestoreMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreMediaResponse> {
        self.client.execute(action: "RestoreMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解冻媒体文件
    ///
    /// 当媒体文件的存储类型是归档存储或深度归档存储时，是不可访问的。如需访问，则需要调用本接口进行解冻，解冻后可访问的媒体文件是临时的，在有效期过后，则不可访问。
    @inlinable @discardableResult
    public func restoreMedia(_ input: RestoreMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreMediaResponse {
        try await self.client.execute(action: "RestoreMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解冻媒体文件
    ///
    /// 当媒体文件的存储类型是归档存储或深度归档存储时，是不可访问的。如需访问，则需要调用本接口进行解冻，解冻后可访问的媒体文件是临时的，在有效期过后，则不可访问。
    @inlinable @discardableResult
    public func restoreMedia(fileIds: [String], restoreDay: UInt64? = nil, restoreTier: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreMediaResponse> {
        self.restoreMedia(.init(fileIds: fileIds, restoreDay: restoreDay, restoreTier: restoreTier, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 解冻媒体文件
    ///
    /// 当媒体文件的存储类型是归档存储或深度归档存储时，是不可访问的。如需访问，则需要调用本接口进行解冻，解冻后可访问的媒体文件是临时的，在有效期过后，则不可访问。
    @inlinable @discardableResult
    public func restoreMedia(fileIds: [String], restoreDay: UInt64? = nil, restoreTier: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreMediaResponse {
        try await self.restoreMedia(.init(fileIds: fileIds, restoreDay: restoreDay, restoreTier: restoreTier, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
