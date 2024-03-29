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

extension Iotvideo {
    /// RunDeviceStream请求参数结构体
    public struct RunDeviceStreamRequest: TCRequest {
        /// 设备TID 列表
        public let tids: [String]

        public init(tids: [String]) {
            self.tids = tids
        }

        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }

    /// RunDeviceStream返回参数结构体
    public struct RunDeviceStreamResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启设备推流
    ///
    /// 本接口（RunDeviceStream）用于开启设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDeviceStream(_ input: RunDeviceStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunDeviceStreamResponse> {
        self.client.execute(action: "RunDeviceStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启设备推流
    ///
    /// 本接口（RunDeviceStream）用于开启设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDeviceStream(_ input: RunDeviceStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunDeviceStreamResponse {
        try await self.client.execute(action: "RunDeviceStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启设备推流
    ///
    /// 本接口（RunDeviceStream）用于开启设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDeviceStream(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunDeviceStreamResponse> {
        self.runDeviceStream(.init(tids: tids), region: region, logger: logger, on: eventLoop)
    }

    /// 开启设备推流
    ///
    /// 本接口（RunDeviceStream）用于开启设备推流，可进行批量操作，每次操作最多100台设备。
    @inlinable @discardableResult
    public func runDeviceStream(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunDeviceStreamResponse {
        try await self.runDeviceStream(.init(tids: tids), region: region, logger: logger, on: eventLoop)
    }
}
