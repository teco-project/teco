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

extension Iotexplorer {
    /// 获取设备绑定的用户列表
    ///
    /// 用于获取设备绑定的用户列表
    @inlinable
    public func getFamilyDeviceUserList(_ input: GetFamilyDeviceUserListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetFamilyDeviceUserListResponse > {
        self.client.execute(action: "GetFamilyDeviceUserList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备绑定的用户列表
    ///
    /// 用于获取设备绑定的用户列表
    @inlinable
    public func getFamilyDeviceUserList(_ input: GetFamilyDeviceUserListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFamilyDeviceUserListResponse {
        try await self.client.execute(action: "GetFamilyDeviceUserList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetFamilyDeviceUserList请求参数结构体
    public struct GetFamilyDeviceUserListRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        public init (productId: String, deviceName: String) {
            self.productId = productId
            self.deviceName = deviceName
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
        }
    }
    
    /// GetFamilyDeviceUserList返回参数结构体
    public struct GetFamilyDeviceUserListResponse: TCResponseModel {
        /// 设备的用户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userList: [DeviceUser]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case userList = "UserList"
            case requestId = "RequestId"
        }
    }
}
