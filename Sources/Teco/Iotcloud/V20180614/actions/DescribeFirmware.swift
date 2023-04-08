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

import TecoCore

extension Iotcloud {
    /// DescribeFirmware请求参数结构体
    public struct DescribeFirmwareRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 固件版本号
        public let firmwareVersion: String

        public init(productID: String, firmwareVersion: String) {
            self.productID = productID
            self.firmwareVersion = firmwareVersion
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case firmwareVersion = "FirmwareVersion"
        }
    }

    /// DescribeFirmware返回参数结构体
    public struct DescribeFirmwareResponse: TCResponseModel {
        /// 固件版本号
        public let version: String

        /// 产品ID
        public let productId: String

        /// 固件名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 固件描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 固件Md5值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let md5sum: String?

        /// 固件上传的秒级时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createtime: UInt64?

        /// 产品名称
        public let productName: String

        /// 固件类型。选项：mcu、module
        public let fwType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case productId = "ProductId"
            case name = "Name"
            case description = "Description"
            case md5sum = "Md5sum"
            case createtime = "Createtime"
            case productName = "ProductName"
            case fwType = "FwType"
            case requestId = "RequestId"
        }
    }

    /// 查询固件信息
    @inlinable
    public func describeFirmware(_ input: DescribeFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareResponse> {
        self.client.execute(action: "DescribeFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询固件信息
    @inlinable
    public func describeFirmware(_ input: DescribeFirmwareRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareResponse {
        try await self.client.execute(action: "DescribeFirmware", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询固件信息
    @inlinable
    public func describeFirmware(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirmwareResponse> {
        self.describeFirmware(.init(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询固件信息
    @inlinable
    public func describeFirmware(productID: String, firmwareVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirmwareResponse {
        try await self.describeFirmware(.init(productID: productID, firmwareVersion: firmwareVersion), region: region, logger: logger, on: eventLoop)
    }
}
