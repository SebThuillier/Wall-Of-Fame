import { Actor, HttpAgent } from "@dfinity/agent"
import { idlFactory as wall_idl, canisterId as wall_id } from "dfx-generated/wall"

const agentOptions = {
  host: "http://localhost:8000",
}

const agent = new HttpAgent(agentOptions)
const wall = Actor.createActor(wall_idl, { agent, canisterId: wall_id })

export { wall }