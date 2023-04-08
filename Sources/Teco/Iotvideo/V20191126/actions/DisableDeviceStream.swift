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

extension Iotvideo {
    /// DisableDeviceStream请求参数结构体
    public struct DisableDeviceStreamRequest: TCRequestModel {
        /// 设备TID列表
        public let tids: [String]

        public init(tids: [String]) {
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

    /// 停止设备推流
    ///
    /// 本接口（DisableDeviceStream）用于停止设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDeviceStream(_ input: DisableDeviceStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDeviceStreamResponse> {
        self.client.execute(action: "DisableDeviceStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止设备推流
    ///
    /// 本接口（DisableDeviceStream）用于停止设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDeviceStream(_ input: DisableDeviceStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDeviceStreamResponse {
        try await self.client.execute(action: "DisableDeviceStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止设备推流
    ///
    /// 本接口（DisableDeviceStream）用于停止设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDeviceStream(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDeviceStreamResponse> {
        self.disableDeviceStream(.init(tids: tids), region: region, logger: logger, on: eventLoop)
    }

    /// 停止设备推流
    ///
    /// 本接口（DisableDeviceStream）用于停止设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func disableDeviceStream(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDeviceStreamResponse {
        try await self.disableDeviceStream(.init(tids: tids), region: region, logger: logger, on: eventLoop)
    }
}
