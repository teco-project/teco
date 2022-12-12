//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iot {
    /// AppGetDeviceStatuses请求参数结构体
    public struct AppGetDeviceStatusesRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String
        
        /// 设备Id列表（单次限制1000个设备）
        public let deviceIds: [String]
        
        public init (accessToken: String, deviceIds: [String]) {
            self.accessToken = accessToken
            self.deviceIds = deviceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case deviceIds = "DeviceIds"
        }
    }
    
    /// AppGetDeviceStatuses返回参数结构体
    public struct AppGetDeviceStatusesResponse: TCResponseModel {
        /// 设备状态
        public let deviceStatuses: [DeviceStatus]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceStatuses = "DeviceStatuses"
            case requestId = "RequestId"
        }
    }
    
    /// 获取绑定设备状态
    ///
    /// 获取绑定设备的上下线状态
    @inlinable
    public func appGetDeviceStatuses(_ input: AppGetDeviceStatusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AppGetDeviceStatusesResponse > {
        self.client.execute(action: "AppGetDeviceStatuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取绑定设备状态
    ///
    /// 获取绑定设备的上下线状态
    @inlinable
    public func appGetDeviceStatuses(_ input: AppGetDeviceStatusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetDeviceStatusesResponse {
        try await self.client.execute(action: "AppGetDeviceStatuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
