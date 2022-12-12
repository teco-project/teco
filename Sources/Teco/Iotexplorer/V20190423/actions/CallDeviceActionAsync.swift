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
    /// CallDeviceActionAsync请求参数结构体
    public struct CallDeviceActionAsyncRequest: TCRequestModel {
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
    
    /// CallDeviceActionAsync返回参数结构体
    public struct CallDeviceActionAsyncResponse: TCResponseModel {
        /// 调用Id
        public let clientToken: String
        
        /// 异步调用状态
        public let status: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case status = "Status"
            case requestId = "RequestId"
        }
    }
    
    /// 异步调用设备行为
    ///
    /// 提供给用户异步调用设备行为的能力
    @inlinable
    public func callDeviceActionAsync(_ input: CallDeviceActionAsyncRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CallDeviceActionAsyncResponse > {
        self.client.execute(action: "CallDeviceActionAsync", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 异步调用设备行为
    ///
    /// 提供给用户异步调用设备行为的能力
    @inlinable
    public func callDeviceActionAsync(_ input: CallDeviceActionAsyncRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CallDeviceActionAsyncResponse {
        try await self.client.execute(action: "CallDeviceActionAsync", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
