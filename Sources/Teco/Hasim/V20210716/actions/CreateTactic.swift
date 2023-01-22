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

extension Hasim {
    /// CreateTactic请求参数结构体
    public struct CreateTacticRequest: TCRequestModel {
        /// 策略名称
        public let name: String

        /// 是否自动执行
        public let isAuto: Int64

        /// 心跳上报间隔(s)
        public let pingInterval: Int64

        /// 是否开启弱信号检测
        public let isWeak: Int64

        /// 弱信号阈值（-dbm）
        public let weakThreshold: Int64

        /// 是否开启时延切换
        public let isDelay: Int64

        /// 网络时延阈值（ms）
        public let delayThreshold: Int64

        /// 是否开启假信号检测
        public let isFake: Int64

        /// 假信号检测IP字符串，用逗号分隔
        public let fakeIP: String

        /// 假信号检测间隔（s）
        public let fakeInterval: Int64

        /// 是否开启网络制式检测
        public let isNet: Int64

        /// 网络回落制式 1 2G、 2 3G 、 3 2/3G
        public let network: Int64

        /// 是否开启移动检测
        public let isMove: Int64

        /// 是否开启最优先运营商
        public let isPriorityTele: Int64

        /// 最优先运营商 1 移动、 2 联通、 3 电信 4 上次在线运营商
        public let priorityTele: Int64

        /// 是否开启最不优先运营商
        public let isBottomTele: Int64

        /// 最不优先运营商 1 移动、 2 联通、 3 电信
        public let bottomTele: Int64

        /// 最优先信号选取策略
        public let isBestSignal: Int64

        public init(name: String, isAuto: Int64, pingInterval: Int64, isWeak: Int64, weakThreshold: Int64, isDelay: Int64, delayThreshold: Int64, isFake: Int64, fakeIP: String, fakeInterval: Int64, isNet: Int64, network: Int64, isMove: Int64, isPriorityTele: Int64, priorityTele: Int64, isBottomTele: Int64, bottomTele: Int64, isBestSignal: Int64) {
            self.name = name
            self.isAuto = isAuto
            self.pingInterval = pingInterval
            self.isWeak = isWeak
            self.weakThreshold = weakThreshold
            self.isDelay = isDelay
            self.delayThreshold = delayThreshold
            self.isFake = isFake
            self.fakeIP = fakeIP
            self.fakeInterval = fakeInterval
            self.isNet = isNet
            self.network = network
            self.isMove = isMove
            self.isPriorityTele = isPriorityTele
            self.priorityTele = priorityTele
            self.isBottomTele = isBottomTele
            self.bottomTele = bottomTele
            self.isBestSignal = isBestSignal
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case isAuto = "IsAuto"
            case pingInterval = "PingInterval"
            case isWeak = "IsWeak"
            case weakThreshold = "WeakThreshold"
            case isDelay = "IsDelay"
            case delayThreshold = "DelayThreshold"
            case isFake = "IsFake"
            case fakeIP = "FakeIP"
            case fakeInterval = "FakeInterval"
            case isNet = "IsNet"
            case network = "Network"
            case isMove = "IsMove"
            case isPriorityTele = "IsPriorityTele"
            case priorityTele = "PriorityTele"
            case isBottomTele = "IsBottomTele"
            case bottomTele = "BottomTele"
            case isBestSignal = "IsBestSignal"
        }
    }

    /// CreateTactic返回参数结构体
    public struct CreateTacticResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建云兔切换策略
    @inlinable @discardableResult
    public func createTactic(_ input: CreateTacticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTacticResponse> {
        self.client.execute(action: "CreateTactic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云兔切换策略
    @inlinable @discardableResult
    public func createTactic(_ input: CreateTacticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTacticResponse {
        try await self.client.execute(action: "CreateTactic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云兔切换策略
    @inlinable @discardableResult
    public func createTactic(name: String, isAuto: Int64, pingInterval: Int64, isWeak: Int64, weakThreshold: Int64, isDelay: Int64, delayThreshold: Int64, isFake: Int64, fakeIP: String, fakeInterval: Int64, isNet: Int64, network: Int64, isMove: Int64, isPriorityTele: Int64, priorityTele: Int64, isBottomTele: Int64, bottomTele: Int64, isBestSignal: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTacticResponse> {
        self.createTactic(CreateTacticRequest(name: name, isAuto: isAuto, pingInterval: pingInterval, isWeak: isWeak, weakThreshold: weakThreshold, isDelay: isDelay, delayThreshold: delayThreshold, isFake: isFake, fakeIP: fakeIP, fakeInterval: fakeInterval, isNet: isNet, network: network, isMove: isMove, isPriorityTele: isPriorityTele, priorityTele: priorityTele, isBottomTele: isBottomTele, bottomTele: bottomTele, isBestSignal: isBestSignal), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云兔切换策略
    @inlinable @discardableResult
    public func createTactic(name: String, isAuto: Int64, pingInterval: Int64, isWeak: Int64, weakThreshold: Int64, isDelay: Int64, delayThreshold: Int64, isFake: Int64, fakeIP: String, fakeInterval: Int64, isNet: Int64, network: Int64, isMove: Int64, isPriorityTele: Int64, priorityTele: Int64, isBottomTele: Int64, bottomTele: Int64, isBestSignal: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTacticResponse {
        try await self.createTactic(CreateTacticRequest(name: name, isAuto: isAuto, pingInterval: pingInterval, isWeak: isWeak, weakThreshold: weakThreshold, isDelay: isDelay, delayThreshold: delayThreshold, isFake: isFake, fakeIP: fakeIP, fakeInterval: fakeInterval, isNet: isNet, network: network, isMove: isMove, isPriorityTele: isPriorityTele, priorityTele: priorityTele, isBottomTele: isBottomTele, bottomTele: bottomTele, isBestSignal: isBestSignal), region: region, logger: logger, on: eventLoop)
    }
}