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

extension Iotexplorer {
    /// DirectBindDeviceInFamily请求参数结构体
    public struct DirectBindDeviceInFamilyRequest: TCRequest {
        /// 小程序appid
        public let iotAppID: String

        /// 用户ID
        public let userID: String

        /// 家庭ID
        public let familyId: String

        /// 产品ID
        public let productId: String

        /// 设备名
        public let deviceName: String

        /// 房间ID
        public let roomId: String?

        public init(iotAppID: String, userID: String, familyId: String, productId: String, deviceName: String, roomId: String? = nil) {
            self.iotAppID = iotAppID
            self.userID = userID
            self.familyId = familyId
            self.productId = productId
            self.deviceName = deviceName
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case iotAppID = "IotAppID"
            case userID = "UserID"
            case familyId = "FamilyId"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case roomId = "RoomId"
        }
    }

    /// DirectBindDeviceInFamily返回参数结构体
    public struct DirectBindDeviceInFamilyResponse: TCResponse {
        /// 返回设备信息
        public let appDeviceInfo: AppDeviceInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appDeviceInfo = "AppDeviceInfo"
            case requestId = "RequestId"
        }
    }

    /// 直接绑定设备和家庭
    @inlinable
    public func directBindDeviceInFamily(_ input: DirectBindDeviceInFamilyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DirectBindDeviceInFamilyResponse> {
        self.client.execute(action: "DirectBindDeviceInFamily", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直接绑定设备和家庭
    @inlinable
    public func directBindDeviceInFamily(_ input: DirectBindDeviceInFamilyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DirectBindDeviceInFamilyResponse {
        try await self.client.execute(action: "DirectBindDeviceInFamily", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直接绑定设备和家庭
    @inlinable
    public func directBindDeviceInFamily(iotAppID: String, userID: String, familyId: String, productId: String, deviceName: String, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DirectBindDeviceInFamilyResponse> {
        self.directBindDeviceInFamily(.init(iotAppID: iotAppID, userID: userID, familyId: familyId, productId: productId, deviceName: deviceName, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 直接绑定设备和家庭
    @inlinable
    public func directBindDeviceInFamily(iotAppID: String, userID: String, familyId: String, productId: String, deviceName: String, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DirectBindDeviceInFamilyResponse {
        try await self.directBindDeviceInFamily(.init(iotAppID: iotAppID, userID: userID, familyId: familyId, productId: productId, deviceName: deviceName, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
