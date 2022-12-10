//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iot {
    /// 批量获取设备状态
    ///
    /// 批量获取设备的当前状态，状态包括在线、离线或未激活状态。
    @inlinable
    public func getDeviceStatuses(_ input: GetDeviceStatusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDeviceStatusesResponse > {
        self.client.execute(action: "GetDeviceStatuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量获取设备状态
    ///
    /// 批量获取设备的当前状态，状态包括在线、离线或未激活状态。
    @inlinable
    public func getDeviceStatuses(_ input: GetDeviceStatusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeviceStatusesResponse {
        try await self.client.execute(action: "GetDeviceStatuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetDeviceStatuses请求参数结构体
    public struct GetDeviceStatusesRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称列表（单次限制1000个设备）
        public let deviceNames: [String]
        
        public init (productId: String, deviceNames: [String]) {
            self.productId = productId
            self.deviceNames = deviceNames
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceNames = "DeviceNames"
        }
    }
    
    /// GetDeviceStatuses返回参数结构体
    public struct GetDeviceStatusesResponse: TCResponseModel {
        /// 设备状态列表
        public let deviceStatuses: [DeviceStatus]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceStatuses = "DeviceStatuses"
            case requestId = "RequestId"
        }
    }
}