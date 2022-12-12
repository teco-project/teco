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
    /// CallDeviceActionSync请求参数结构体
    public struct CallDeviceActionSyncRequest: TCRequestModel {
        /// 产品Id
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 产品数据模板中行为功能的标识符，由开发者自行根据设备的应用场景定义
        public let actionId: String
        
        /// 输入参数
        public let inputParams: String?
        
        public init (productId: String, deviceName: String, actionId: String, inputParams: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.actionId = actionId
            self.inputParams = inputParams
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case actionId = "ActionId"
            case inputParams = "InputParams"
        }
    }
    
    /// CallDeviceActionSync返回参数结构体
    public struct CallDeviceActionSyncResponse: TCResponseModel {
        /// 调用Id
        public let clientToken: String
        
        /// 输出参数，取值设备端上报$thing/up/action method为action_reply 的 response字段，物模型协议参考https://cloud.tencent.com/document/product/1081/34916#.E8.AE.BE.E5.A4.87.E8.A1.8C.E4.B8.BA.E8.B0.83.E7.94.A8
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let outputParams: String?
        
        /// 返回状态，取值设备端上报$thing/up/action	method为action_reply 的 status字段，如果不包含status字段，则取默认值，空字符串，物模型协议参考https://cloud.tencent.com/document/product/1081/34916#.E8.AE.BE.E5.A4.87.E8.A1.8C.E4.B8.BA.E8.B0.83.E7.94.A8
        public let status: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case outputParams = "OutputParams"
            case status = "Status"
            case requestId = "RequestId"
        }
    }
    
    /// 同步调用设备行为
    ///
    /// 为用户提供同步调用设备行为的能力。
    @inlinable
    public func callDeviceActionSync(_ input: CallDeviceActionSyncRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CallDeviceActionSyncResponse > {
        self.client.execute(action: "CallDeviceActionSync", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 同步调用设备行为
    ///
    /// 为用户提供同步调用设备行为的能力。
    @inlinable
    public func callDeviceActionSync(_ input: CallDeviceActionSyncRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallDeviceActionSyncResponse {
        try await self.client.execute(action: "CallDeviceActionSync", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
