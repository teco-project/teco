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
    /// 用户控制设备
    ///
    /// 用户通过APP控制设备
    @inlinable
    public func appIssueDeviceControl(_ input: AppIssueDeviceControlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AppIssueDeviceControlResponse > {
        self.client.execute(action: "AppIssueDeviceControl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 用户控制设备
    ///
    /// 用户通过APP控制设备
    @inlinable
    public func appIssueDeviceControl(_ input: AppIssueDeviceControlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppIssueDeviceControlResponse {
        try await self.client.execute(action: "AppIssueDeviceControl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AppIssueDeviceControl请求参数结构体
    public struct AppIssueDeviceControlRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String
        
        /// 产品Id
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 控制数据（json）
        public let controlData: String
        
        /// 是否发送metadata字段
        public let metadata: Bool?
        
        public init (accessToken: String, productId: String, deviceName: String, controlData: String, metadata: Bool?) {
            self.accessToken = accessToken
            self.productId = productId
            self.deviceName = deviceName
            self.controlData = controlData
            self.metadata = metadata
        }
        
        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case controlData = "ControlData"
            case metadata = "Metadata"
        }
    }
    
    /// AppIssueDeviceControl返回参数结构体
    public struct AppIssueDeviceControlResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}