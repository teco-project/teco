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
    /// DeleteDevices请求参数结构体
    public struct DeleteDevicesRequest: TCRequestModel {
        /// 多个设备标识
        public let devicesItems: [DevicesItem]
        
        public init (devicesItems: [DevicesItem]) {
            self.devicesItems = devicesItems
        }
        
        enum CodingKeys: String, CodingKey {
            case devicesItems = "DevicesItems"
        }
    }
    
    /// DeleteDevices返回参数结构体
    public struct DeleteDevicesResponse: TCResponseModel {
        /// 删除的结果代码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultCode: String?
        
        /// 删除的结果信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultMessage: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resultCode = "ResultCode"
            case resultMessage = "ResultMessage"
            case requestId = "RequestId"
        }
    }
    
    /// 批量删除设备
    @inlinable
    public func deleteDevices(_ input: DeleteDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDevicesResponse > {
        self.client.execute(action: "DeleteDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量删除设备
    @inlinable
    public func deleteDevices(_ input: DeleteDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDevicesResponse {
        try await self.client.execute(action: "DeleteDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
