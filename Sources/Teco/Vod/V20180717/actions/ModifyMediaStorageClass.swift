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

extension Vod {
    /// ModifyMediaStorageClass请求参数结构体
    public struct ModifyMediaStorageClassRequest: TCRequest {
        /// 媒体文件唯一标识列表，最大长度：100。
        public let fileIds: [String]

        /// 目标存储类型。可选值有：
        /// - STANDARD：标准存储。
        /// - STANDARD_IA：低频存储。
        /// - ARCHIVE：归档存储。
        /// - DEEP_ARCHIVE：深度归档存储。
        public let storageClass: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 取回模式。当文件的存储类型从归档或深度归档转换为标准存储时，需要指定取回（也称为解冻）操作的模式，具体说明请参考[数据取回及取回模式](https://cloud.tencent.com/document/product/266/56196#retake)。
        /// 当媒体文件目前的存储类型为归档存储时，有以下取值：
        /// - Expedited：极速模式。
        /// - Standard：标准模式。
        /// - Bulk：批量模式。
        ///
        /// 当媒体文件目前的存储类型为深度归档存储时，有以下取值：
        /// - Standard：标准模式。
        /// - Bulk：批量模式。
        public let restoreTier: String?

        public init(fileIds: [String], storageClass: String, subAppId: UInt64? = nil, restoreTier: String? = nil) {
            self.fileIds = fileIds
            self.storageClass = storageClass
            self.subAppId = subAppId
            self.restoreTier = restoreTier
        }

        enum CodingKeys: String, CodingKey {
            case fileIds = "FileIds"
            case storageClass = "StorageClass"
            case subAppId = "SubAppId"
            case restoreTier = "RestoreTier"
        }
    }

    /// ModifyMediaStorageClass返回参数结构体
    public struct ModifyMediaStorageClassResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改媒体文件存储类型
    ///
    /// 修改媒体文件的存储类型。
    /// 当媒体文件的存储类型为标准存储时，可以修改为以下类型：
    /// - 低频存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为低频存储时，可以修改为以下类型：
    /// - 标准存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为归档存储时，可以修改为以下类型：
    /// - 标准存储
    ///
    /// 当媒体文件的当前存储类型为深度归档存储时，可以修改为以下类型：
    /// - 标准存储
    @inlinable @discardableResult
    public func modifyMediaStorageClass(_ input: ModifyMediaStorageClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMediaStorageClassResponse> {
        self.client.execute(action: "ModifyMediaStorageClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改媒体文件存储类型
    ///
    /// 修改媒体文件的存储类型。
    /// 当媒体文件的存储类型为标准存储时，可以修改为以下类型：
    /// - 低频存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为低频存储时，可以修改为以下类型：
    /// - 标准存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为归档存储时，可以修改为以下类型：
    /// - 标准存储
    ///
    /// 当媒体文件的当前存储类型为深度归档存储时，可以修改为以下类型：
    /// - 标准存储
    @inlinable @discardableResult
    public func modifyMediaStorageClass(_ input: ModifyMediaStorageClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMediaStorageClassResponse {
        try await self.client.execute(action: "ModifyMediaStorageClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改媒体文件存储类型
    ///
    /// 修改媒体文件的存储类型。
    /// 当媒体文件的存储类型为标准存储时，可以修改为以下类型：
    /// - 低频存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为低频存储时，可以修改为以下类型：
    /// - 标准存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为归档存储时，可以修改为以下类型：
    /// - 标准存储
    ///
    /// 当媒体文件的当前存储类型为深度归档存储时，可以修改为以下类型：
    /// - 标准存储
    @inlinable @discardableResult
    public func modifyMediaStorageClass(fileIds: [String], storageClass: String, subAppId: UInt64? = nil, restoreTier: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMediaStorageClassResponse> {
        self.modifyMediaStorageClass(.init(fileIds: fileIds, storageClass: storageClass, subAppId: subAppId, restoreTier: restoreTier), region: region, logger: logger, on: eventLoop)
    }

    /// 修改媒体文件存储类型
    ///
    /// 修改媒体文件的存储类型。
    /// 当媒体文件的存储类型为标准存储时，可以修改为以下类型：
    /// - 低频存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为低频存储时，可以修改为以下类型：
    /// - 标准存储
    /// - 归档存储
    /// - 深度归档存储
    ///
    /// 当媒体文件的当前存储类型为归档存储时，可以修改为以下类型：
    /// - 标准存储
    ///
    /// 当媒体文件的当前存储类型为深度归档存储时，可以修改为以下类型：
    /// - 标准存储
    @inlinable @discardableResult
    public func modifyMediaStorageClass(fileIds: [String], storageClass: String, subAppId: UInt64? = nil, restoreTier: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMediaStorageClassResponse {
        try await self.modifyMediaStorageClass(.init(fileIds: fileIds, storageClass: storageClass, subAppId: subAppId, restoreTier: restoreTier), region: region, logger: logger, on: eventLoop)
    }
}
