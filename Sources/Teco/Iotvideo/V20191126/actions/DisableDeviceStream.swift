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

extension Iotvideo {
    /// 停止设备推流
    ///
    /// 本接口（DisableDeviceStream）用于停止设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable
    public func disableDeviceStream(_ input: DisableDeviceStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableDeviceStreamResponse > {
        self.client.execute(action: "DisableDeviceStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 停止设备推流
    ///
    /// 本接口（DisableDeviceStream）用于停止设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable
    public func disableDeviceStream(_ input: DisableDeviceStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDeviceStreamResponse {
        try await self.client.execute(action: "DisableDeviceStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DisableDeviceStream请求参数结构体
    public struct DisableDeviceStreamRequest: TCRequestModel {
        /// 设备TID列表
        public let tids: [String]
        
        public init (tids: [String]) {
            self.tids = tids
        }
        
        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }
    
    /// DisableDeviceStream返回参数结构体
    public struct DisableDeviceStreamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}